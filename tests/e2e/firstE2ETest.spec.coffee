describe 'first e2e test', () ->
  it 'should succeed', () ->
    mainView = $('nav-view[name=main]')
    expect(mainView.isPresent()).toBe(true)
