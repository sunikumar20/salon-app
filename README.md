API details
Paginated Search for businesses and sort by price (lowest to highest, highest to lowest)
GET localhost:3000/salons.json?query=abc&sort_by=price&order=desc&page=3

List available services and time slots for a particular business
GET localhost:3000/salons/3/services.json

Book a service at a business
POST localhost:3000/salons/3/bookings.json
{
 "booking": {
	"service_ids": ["1"]
 },
 "select_days": "2021-11-14",
 "select_time": "10:15 AM"
}
