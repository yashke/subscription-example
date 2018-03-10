# Subscription system example

Usually it's not the thing you want to focus on. It's not a part of UVP of the business, rather infra-like code - you need it to correctly account for your services. This project is my take on SaaS subscription model - the part of apps I've never seen implemented correctly.

Features:

* trials
* multiple plans (with support for legacy plans)
* different periods of subscription (per plan)
* resource limits based on plans - binary and numeric
* periodic discounts - like 50% of plan's yearly price for 1 year
* upgrades and downgrades
* special cases, because you never know what to expect from your marketing team

Implementation details:

* DDD, CQRS and ES as architecture patterns
* push to master approach
* rubocop with standard set of rules applied
