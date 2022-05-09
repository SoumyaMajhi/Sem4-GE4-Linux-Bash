
#1.............add_num.....................

echo -e "Enter 1st number: \c"
read a
echo -e "Enter 2nd number: \c"
read b
c=`expr $a + $b`
echo -e "Addition=$c\c"
echo
d=`expr $a - $b`
echo -e "Subtraction=$d\c"
echo
e=`expr $a \* $b`
echo -e "Multiplication=$e\c"
echo
f=`expr $a / $b`
echo -e "Division=$f\c"
echo


#2.................circle_area..................

echo "Enter the Radius: "
read r
a=$(echo "(3.1412 * $r * $r)"|bc -l)
echo "Area of the Circle is: $a"

#3...............even-odd_check....................

echo "Enter a number: \c"
read a
r=` expr $a % 2 `

if [ $r -eq 0 ]
 then
  echo "$a is Even Number."
 else
  echo "$a is Odd Number."
fi


#4......................factorial....................

echo "Enter a number: "
read a
s=1
for((i=1;i<=a;i++))
 do
  s=` expr $s \* $i `
 done

echo "$s"


#5...................check_fibonacci....................

echo "Enter a number terms of fibonnaci series: "
read n
a=0
b=1
for((i=0;i<n;i++))
 do
  if [ $i -le 1 ]
   then
    echo "$i"
   else
    c=` expr $a + $b `
    a=$b
    b=$c
    echo "$c"
  fi
 done

#6...................floating_num.....................

echo -e "Enter 1st number: \c"
read a
echo -e "Enter 2nd number: \c"
read b
c=$(echo "($a+$b)"|bc -l)
echo "Addition=$c"


#7...................prime_check....................

echo "Enter a number: "
read n

for((i=2;i<n;i++))
 do
  c=` expr $n % $i `
  if [ $c -eq 0 ]
   then
    echo "$n is not prime"
    exit 0	
  fi
 done
echo "$n is prime"

#8..................small-large_check.................

echo "Enter a number: "
read a
read b
read c

if [ $a -gt $b] && [ $a -gt $c ] ; then echo "$a is the Greatest."
elif [ $b -gt $a ] && [ $b -gt $c ] ; then echo "$b is the Greatest."
else echo "$c is the Greatest."
fi


#9.................swap1................

echo "Enter 2 numbers:2\c"
read a
read b
echo "Before swapping: a=$a and b=$b"

#swapping with 3rd variable
d=$a
a=$b
b=$d
echo "After swapping: a=$a and b=$b"

#10....................swap2................

echo "Enter 2 numbers: \c"
read a
read b
echo "Before swapping: a=$a and b=$b"

#swapping without 3rd variable
a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`
echo "After swapping: a=$a and b=$b"

<<comment
a=a+b
b=a-b                #this is a multiline comnment
a=a-b
comment

#11....................armstrong no.............

echo "enter a number: "
read n
s=0
m=$n

while [ $n -gt 0 ]
    do 
	r=` expr $n % 10 ` #integer at unit place,tens,thousands, and so on...
	s=` expr $s + $r \* $r \* $r `
	n=` expr $n / 10 `
done

if [ $s -eq $m ]; then echo "$m is Armstrong"
else echo "$m is Armstrong"
fi


#12.......euclid algo GCD...............

echo "enter 2 numbers: "
read a
read b
p=$a
q=$b
while [ $a -ne $b ]
    do
	if [ $a -gt $b ]; then a=` expr $a - $b ` 
#echo "$m is Armstrong"
else b=` expr $b - $a `
#echo "$m is Armstrong"
fi
done
echo "GCD of $p & $q is: $a"


#13.......perfect no check................

echo " enter a number: "
read n
s=0
for ((i=1;i<n;i++))
do
 if [ ` expr $n % $i ` -eq 0 ]
  then 
   s=` expr $s + $i `
 fi
done
if [ $s -eq $n ]; then echo "$n is a perfect number" 
else 
echo "$n is not a perfect number"
fi
  


#14..........krishnamurthy_check...................

echo "enter a number: "
read n
s=0
m=$n
while [ $n -ne 0 ]
 do
  r=` expr $n % 10 ` #integer at unit place,tens,thousands, so on...
  f=1
 for((i=1;i<=r;i++))
  do
   f=` expr $f \* $i `
  done
 s=` expr $s + $f ` 
 n=` expr $n / 10 ` #integer shortening
 done
if [ $s -eq $m ]; then echo "$m is a krishnamurthy number" 
else 
echo "$m is not a krishnamurthy number"
fi



#15...........PALINDROME_CHECK...................

echo "enter a number : "
read n
t=$n
rev=0
while [ $n -gt 0 ]
    do 
	r=` expr $n % 10 ` #integer at unit place,tens,thousands,so on
	rev=` expr $rev \* 10 + $r `
	n=` expr $n / 10 `
    done
if [ $rev -eq $t ]
 then
  echo "$t is palindrome"
else
  echo "$t is not palindrome"
fi


#16..............PRIME_RANGE...................

echo "Enter lower limit: "
read l
echo "Enter upper limit: "
read u
echo "prime numbers from $l to $u are: "
for ((j=l;j<=u;j++))
	do
	for((i=2;i<j;i++))
 	do
  	p=` expr $j % $i `
	if [ $p -eq 0 ];then j=` expr $j + 1 `	
	fi
 	done
if [ $j -le $u ];then echo "$j"	
fi
done


#17.....................EVEN_SUM_RANGE...................

echo -n " enter the upper lim "
read n
s=0
for ((i=0;i<=n;i=i+2))
do
let s=s+i
done
echo "Sum of even intergers upto $n is: $s"


#18................DIV_3.................

echo -n " enter the number: "
read n
m=$n
s=0
while [ $n -gt 0 ]
	do
	r=` expr $n % 10 `
	s=` expr $s \* 10 + $r `
	n=` expr $n / 10 `
	done
t=` expr $s % 3 `
if [ $t -eq 0 ]
 then
  echo "$m is divisible"
else
  echo "$m is not divisible "
fi


#19....................X_POWER_N_SERIES...............

echo -n " enter the value of x: "
read x
echo -n " enter the power of x: "
read n
s=1
for ((i=1;i<=n;i++))
do
let p=x**i
let s=s+p
done
echo "Sum of the series of $x^$n is: $s"


#20...................PATTERN..................

#pattern 1 forward
echo -n " enter number of rows: "
read n
for ((i=1;i<=n;i++))
do
for ((j=1;j<=i;j++))
do
echo -n "*"
done
echo
done


#pattern 1 reverse
<<comment
echo -n " enter number of rows: "
read n
for ((i=n;i>=1;i--))
do
for ((j=1;j<=i;j++))
do
echo -n "*"
done
echo
done
comment


#21...............FIBONACCI_RANGE..................

echo "Enter upper limit of fibonnaci series: "
read n
a=0
b=1
c=0
while [ 1 ]
 do
   if [ $c -le 1 ]; then echo "$c"
   fi
   c=` expr $a + $b `
    a=$b
    b=$c
    if [ $c -le $n ]; then echo "$c"
    else break
    fi
done



#22...................ARMSTRONG_RANGE...............

echo "enter lower limit of 3-digit Armstrong numbers: "
read n
echo "enter upper limit of 3-digit Armstrong numbers: "
read m
for ((i=n;i<=m;i++))
do
s=0
j=$i
while [ $j -gt 0 ]
    do
r=` expr $j % 10 ` #integer at unit place,tens,thousands, and so on...
s=` expr $s + $r \* $r \* $r `
j=` expr $j / 10 `
done
if [ $s -eq $i ]; then echo "$i"
fi
done