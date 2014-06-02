Forgetmenot.Collections.relationships = Backbone.Collection.extend({
  url: "api/relationships",
  model: Forgetmenot.Models.Relationship

});

window.Forgetmenot.relationships = new Forgetmenot.Collections.relationships();