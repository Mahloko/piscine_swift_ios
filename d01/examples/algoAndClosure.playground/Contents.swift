
/* ************************************************************************** */
/*                        Function Type                                       */
/* ************************************************************************** */

var operations : [String : (Int, Int) -> Int] = [:] // dictionary

func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}

operations["+"] = add

operations["+"]!(2, 3)


/* ************************************************************************** */
/*                        Closures                                            */
/* ************************************************************************** */

// different notations to implement a clossure
operations["-"] = {
    (n1: Int, n2: Int) -> Int in
    return n1 - n2
}

operations["*"] = {
    return $0 * $1
}

operations["/"] = {
    $0 / $1
}

// binding the string+ to the operator+
operations["+"] = (+)
