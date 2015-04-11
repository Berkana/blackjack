class window.CardView extends Backbone.View
  className: 'card'

#  template: _.template '<%= rankName %> of <%= suitName %>'
  template: _.template '<% if(!revealed){%>
  <img alt="covered card" src="img/card-back.png">
  <%} else {%>
  <img alt="<%= rankName %> of <%= suitName %>" src="img/cards/<%= rankName %>-<%= suitName %>.png" >
  <% } %>'
  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    @$el.addClass 'covered' unless @model.get 'revealed'

