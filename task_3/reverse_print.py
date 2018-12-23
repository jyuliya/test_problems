
def reverse_print(some_list):
  if (some_list['next']):
    reverse_print(some_list['next'])
  print(some_list['value'])
  return 0



some_list = {
  'value': 1,
  'next': {
    'value': 2,
    'next': {
      'value': 3,
      'next': {
        'value': 4,
        'next': None,
      },
    },
  },
}

reverse_print(some_list)