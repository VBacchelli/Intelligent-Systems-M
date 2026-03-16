from unified_planning.shortcuts import OneshotPlanner
from unified_planning.shortcuts import up
from unified_planning.io import PDDLReader
import argparse
up.shortcuts.get_environment().credits_stream = None

if __name__ == "__main__":
    # Build an argument parser
    parser = argparse.ArgumentParser(description="Simple script to call a planner on PDDL files")

    # Define the arguments
    parser.add_argument('domain', type=str, help='Path to the domain PDDL file')
    parser.add_argument('problem', type=str, help='Path to the problem PDDL file')

    # Parse arguments
    args = parser.parse_args()

    # Build a reader object
    reader = PDDLReader()

    # Read a full problem specification
    problem = reader.parse_problem(args.domain, args.problem)

    # Try to solve the problem
    with OneshotPlanner(name='fast-downward') as planner:
        result = planner.solve(problem)
        # Check the result
        if result.status == up.engines.PlanGenerationResultStatus.SOLVED_SATISFICING:
            print('Returned plan')
            print('-' * 78)
            print(result.plan)
        else:
            print("No plan found.")
