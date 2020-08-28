class Flight:

	id_counter = 1

	def __init__(self, origin,destination,duration):
		self.origin = origin
		self.destination = destination
		self.duration = duration
		
		self.id = Flight.id_counter
		Flight.id_counter += 1

		self.passengers = []

	def print_info(self):
		print(f"id : {self.id}")
		print(f"origin : {self.origin}")
		print(f"destination : {self.destination}")
		print(f"duration : {self.duration}")
		print("Passengers:")
		for p in self.passengers:
			print(p.name)
		print('\n')

	def delay(self, time):
		self.duration += time

	def add_passenger(self, p):
		self.passengers.append(p)
		p.flight_id = self.id

class Passenger:

	def __init__(self, name):
		self.name = name
		self.flight_id = None





def main():

	f1 = Flight("New York","Paris",540)
	alice = Passenger('Alice')
	bob = Passenger('Bob')
	f1.add_passenger(alice)
	f1.add_passenger(bob)
	f1.print_info()

	f2 = Flight("Tokyo","Shanghai",185)
	f2.delay(15)
	f2.print_info()

if __name__ == "__main__":
	main()