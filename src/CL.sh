# 1. Elastic Load Balancer (ELB): You set up an ELB to distribute incoming traffic across multiple EC2 instances. ELB automatically scales its resources to handle varying traffic loads. ELB can be configured to use various algorithms for routing traffic, such as round-robin, least connections, or IP hash.

# 2. Auto Scaling Groups: You create Auto Scaling Groups (ASG) which manage a collection of EC2 instances. ASG monitors the health of your EC2 instances and automatically adjusts the number of instances in response to changing demand. When demand increases, ASG can spin up new EC2 instances, and when demand decreases, it can terminate instances.

# 3. Dynamic IP Assignment: Each EC2 instance within the Auto Scaling Group can have a dynamic private IP address assigned to it. This means you don't need to assign a unique IP address to each instance manually. Instead, AWS manages the IP addressing as instances are launched and terminated.
