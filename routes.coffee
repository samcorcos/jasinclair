Router.map ->
  @route 'home',
    path: '/'

  @route 'papers',
    path: '/papers'

  @route 'courses',
    path: '/courses'

  @route 'dashboard',
    path: '/dashboard'

  @route 'cv',
    path: '/cv'

  @route 'login',
    path: '/login'

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
