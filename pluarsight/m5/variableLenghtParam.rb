def produce_fleet(days_to_complete, *types)

end

produce_fleet(10,:freighter,:freighter,:explorer)


def produce_fleet2(days_to_compelete=10,*types)

end

produce_fleet2(20,:freighter,:freighter,:explorer)
produce_fleet2(:freighter,:freighter,:explorer)

ship_types = [:freighter,:freighter,:explorer]
produce_fleet(15,*ship_types)