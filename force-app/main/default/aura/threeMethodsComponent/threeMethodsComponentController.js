({
  tabinit: function(cmp, event)
  {
    cmp.set('v.columns', [
      {label: 'Contact Id', fieldName: 'Id', type: 'text'},
      {label: 'Contact Last Name', fieldName: 'LastName', type: 'text'}
    ]);
  }
})