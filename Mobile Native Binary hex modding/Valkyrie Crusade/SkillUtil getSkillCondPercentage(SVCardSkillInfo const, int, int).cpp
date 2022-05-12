//Mod
LABEL_3:
  v11 = __OFADD__(v9 / v10, v5);
  result = 100;
  if ( !v11 )
    result = 100;
  return result;
}

//Orig
LABEL_3:
  result = v9 / v10 + v5;
  if ( result > 100 )
    result = 100;
  return result;
}