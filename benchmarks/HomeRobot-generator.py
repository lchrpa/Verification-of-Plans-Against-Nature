import sys


def generate(rooms,humans):
  print("(define (problem HomeRobot-problem-r{}h{})".format(rooms, humans))
  print("(:domain HomeRobot)")
  print("(:objects ")
  for y in range(1, rooms+1):
      print("r{}".format(y), end=' ')
  print("- room")
  for y in range(1, humans+1):
      print("h{}".format(y), end=' ')
  print("- human")
  print(")")
  
  print("(:init", "(at-robot r1)", "(free-corridor)", sep='\n')
  for y in range(1, rooms+1):
      print("(unprepared r{})".format(y), end='\n')
  for y in range(1, humans+1):
      print("(at-human h{} r{})".format(y,y), end='\n')
  print(")")
  
  print("(:goal (and ")
  for y in range(1, rooms+1):
      print("(prepared r{})".format(y), end='\n')
  print("))")
  print(")")

try:
  assert len(sys.argv) == 2
  factor = int(sys.argv[1])
  
  generate(factor*2,factor)
except AssertionError:
  print("usage: python3 HomeRobot-generator.py <factor>")
