from collections.abc import Iterable

__last_temprint_length__ = 0

def temprint(objs):
    global __last_temprint_length__
    if not isinstance(objs, Iterable):
        objs = [objs]
    print('\r' + ' '*__last_temprint_length__, end='\r', flush=True)
    msg = ' '.join(str(obj) for obj in objs)
    __last_temprint_length__ = len(msg)
    print(msg, end='', flush=True)
