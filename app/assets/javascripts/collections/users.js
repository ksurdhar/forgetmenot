Forgetmenot.Collections.Users = Backbone.Collection.extend({
  url: "api/users",
  model: Forgetmenot.Models.User,
  
  getOrFetch: function (id){
    var model;
    var users = this;

    if(model = this.get(id)){
      model.fetch();
      return model;
    } else {
      model = new Forgetmenot.Models.User({ id: id });
      model.fetch({
        success: function(){ users.add(model) }
      });
      return model
    }
  }
  
});

window.Forgetmenot.users = new Forgetmenot.Collections.Users();