add()
{
echo ` expr $1 + $2 `
}
echo  "input x:"
read x 
echo "input y:"
read y 
echo "$x add $y result:" 
add $x $y
