(define (domain gridworld_domain)
  (:requirements :strips :typing)
  (:types 
    robot - object
    coordinate - object
  )

  (:predicates
    (at ?r - robot ?x - coordinate ?y - coordinate) ; Robot is at a specific cell (x, y)
    (clear ?x - coordinate ?y - coordinate)         ; Cell (x, y) is free of hurdles
    (up ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate) ; Movement upwards
    (down ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate) ; Movement downwards
    (left ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate) ; Movement left
    (right ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate) ; Movement right
  )

  (:action move-up-from-to
    :parameters (?r - robot ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate)
    :precondition (and 
      (at ?r ?x1 ?y1)
      (up ?x1 ?y1 ?x2 ?y2)
      (clear ?x2 ?y2)
    )
    :effect (and
      (not (at ?r ?x1 ?y1))
      (at ?r ?x2 ?y2)
    )
  )

  (:action move-down-from-to
    :parameters (?r - robot ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate)
    :precondition (and 
      (at ?r ?x1 ?y1)
      (down ?x1 ?y1 ?x2 ?y2)
      (clear ?x2 ?y2)
    )
    :effect (and
      (not (at ?r ?x1 ?y1))
      (at ?r ?x2 ?y2)
    )
  )

  (:action move-left-from-to
    :parameters (?r - robot ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate)
    :precondition (and 
      (at ?r ?x1 ?y1)
      (left ?x1 ?y1 ?x2 ?y2)
      (clear ?x2 ?y2)
    )
    :effect (and
      (not (at ?r ?x1 ?y1))
      (at ?r ?x2 ?y2)
    )
  )

  (:action move-right-from-to
    :parameters (?r - robot ?x1 - coordinate ?y1 - coordinate ?x2 - coordinate ?y2 - coordinate)
    :precondition (and 
      (at ?r ?x1 ?y1)
      (right ?x1 ?y1 ?x2 ?y2)
      (clear ?x2 ?y2)
    )
    :effect (and
      (not (at ?r ?x1 ?y1))
      (at ?r ?x2 ?y2)
    )
  )
)