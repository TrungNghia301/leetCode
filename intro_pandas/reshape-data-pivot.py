import pandas as pd

def pivotTable(weather: pd.DataFrame) -> pd.DataFrame:
    dfpivot = weather.pivot(index='month',columns='city',values='temperature')
    return dfpivot