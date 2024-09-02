import pandas as pd

def selectFirstRows(employees: pd.DataFrame) -> pd.DataFrame:
    first = employees.head(3)
    return first