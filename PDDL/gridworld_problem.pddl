(define (problem gridworld_problem)
  (:domain gridworld_domain)

  (:objects
    robot1 - robot
    x0 x1 x2 x3 y0 y1 y2 y3 - coordinate ; Define x and y coordinates as objects
  )

  (:init
    (at robot1 x1 y0)         ; Robot starts at cell (x1, y1)

    ; Define clear cells
    ; (clear x0 y0)
    (clear x0 y1) (clear x0 y2) (clear x0 y3)
    (clear x1 y0) (clear x1 y1) (clear x1 y2) (clear x1 y3) 
    (clear x2 y0) (clear x2 y1) (clear x2 y2) (clear x2 y3)
    (clear x3 y0) 
    ; (clear x3 y1) 
    (clear x3 y2) (clear x3 y3)

    ; Define adjacency relationships
    (right x0 y0 x0 y1) (right x0 y1 x0 y2) (right x0 y2 x0 y3)
    (right x1 y0 x1 y1) (right x1 y1 x1 y2) (right x1 y2 x1 y3)
    (right x2 y0 x2 y1) (right x2 y1 x2 y2) (right x2 y2 x2 y3)
    (right x3 y0 x3 y1) (right x3 y1 x3 y2) (right x3 y2 x3 y3)

    
    (left x0 y1 x0 y0) (left x0 y2 x0 y1) (left x0 y3 x0 y2)
    (left x1 y1 x1 y0) (left x1 y2 x1 y1) (left x1 y3 x1 y2)
    (left x2 y1 x2 y0) (left x2 y2 x2 y1) (left x2 y3 x2 y2)
    (left x3 y1 x3 y0) (left x3 y2 x3 y1) (left x3 y3 x3 y2)

    (up x1 y0 x0 y0) (up x2 y0 x1 y0) (up x3 y0 x2 y0)
    (up x1 y1 x0 y1) (up x2 y1 x1 y1) (up x3 y1 x2 y1)
    (up x1 y2 x0 y2) (up x2 y2 x1 y2) (up x3 y2 x2 y2)
    (up x1 y3 x0 y3) (up x2 y3 x1 y3) (up x3 y3 x2 y3)

    (down x0 y0 x1 y0) (down x1 y0 x2 y0) (down x2 y0 x3 y0)
    (down x0 y1 x1 y1) (down x1 y1 x2 y1) (down x2 y1 x3 y1)
    (down x0 y2 x1 y2) (down x1 y2 x2 y2) (down x2 y2 x3 y2)
    (down x0 y3 x1 y3) (down x1 y3 x2 y3) (down x2 y3 x3 y3)
  )

  (:goal
    (at robot1 x0 y3) ; Goal is for the robot to reach cell (x3, y3)
  )
)
