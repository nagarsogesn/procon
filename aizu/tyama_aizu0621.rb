#!/usr/bin/ruby
n,m=gets.split.map(&:to_i)
a=n.times.map{
	h=Hash.new(0)
	gets.chomp.each_byte{|b|h[b]+=1}
	h
}
#87,66,82
x=Float::INFINITY
w=0
(0..n-3).each{|i|
	w+=m-a[i][87]
	b=0
	(i+1..n-2).each{|j|
		b+=m-a[j][66]
		r=0
		(j+1..n-1).each{|k|r+=m-a[k][82]}
		x=[x,w+b+r].min
	}
}
p x