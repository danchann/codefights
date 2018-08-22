<div class="markdown">You noticed that your server is running out of free HDD space. You investigated and discovered that most of the space is taken up by the **workers_info** table, which has the following structure: * `id`: the unique worker ID; * `name`: the name of the worker; * `date_of_birth`: the worker's date of birth; * `salary`: the worker's salary. One strange thing about this table is that a lot of its rows contain `NULL` values in some of the columns (except for the `id` column, which always contains a non-NULL value). After thinking about this problem, you've decided to change the way you store data in **workers_info**. Instead of keeping the cells with `NULL` values in the table, you will only store `id`, `column_name`, and `value` columns. `column_name` will contain the name of a column that contains a non-NULL value for each `id`. `value` will be the value from this row, converted to a string. For dates, use the format `YYYY-MM-DD`. Given the **workers_info** table, compose a results table that has the following three columns: `id`, `column_name`, and `value`, that contain the workers' `id`s, the column names, and the stringified values, in the format described above. The table should be sorted in ascending order by `id`. Rows with the same `id` should be sorted by column names in the following order: `name`, `date_of_birth`, and then `salary`. **Example** For the following table **workers_info**, where empty cells stand for a `NULL` value

<table>

<tbody>

<tr>

<th>id</th>

<th>name</th>

<th>date_of_birth</th>

<th>salary</th>

</tr>

<tr>

<td>1</td>

<td>Justin Penrose</td>

<td>1969-03-01</td>

<td>3000</td>

</tr>

<tr>

<td>2</td>

<td></td>

<td></td>

<td></td>

</tr>

<tr>

<td>3</td>

<td>Robt Claire</td>

<td></td>

<td></td>

</tr>

<tr>

<td>10</td>

<td></td>

<td>1970-12-12</td>

<td></td>

</tr>

<tr>

<td>11</td>

<td></td>

<td></td>

<td>5000</td>

</tr>

<tr>

<td>12</td>

<td>Yuk Kluge</td>

<td></td>

<td>4500</td>

</tr>

</tbody>

</table>

the output should be

<table>

<tbody>

<tr>

<th>id</th>

<th>column_name</th>

<th>value</th>

</tr>

<tr>

<td>1</td>

<td>name</td>

<td>Justin Penrose</td>

</tr>

<tr>

<td>1</td>

<td>date_of_birth</td>

<td>1969-03-01</td>

</tr>

<tr>

<td>1</td>

<td>salary</td>

<td>3000</td>

</tr>

<tr>

<td>3</td>

<td>name</td>

<td>Robt Claire</td>

</tr>

<tr>

<td>10</td>

<td>date_of_birth</td>

<td>1970-12-12</td>

</tr>

<tr>

<td>11</td>

<td>salary</td>

<td>5000</td>

</tr>

<tr>

<td>12</td>

<td>name</td>

<td>Yuk Kluge</td>

</tr>

<tr>

<td>12</td>

<td>salary</td>

<td>4500</td>

</tr>

</tbody>

</table>

* **[execution time limit] 10 seconds (mysql)**</div>