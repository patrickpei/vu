# Homework 1

## Free Response Question 2
1. In the described process, the infection, as stated in step c, "creates system services", mimicking what non-malicious software would do. This mimicks the behavior of a virus since the software is tricking users into thinking that executing the program is non-malicious in fact the opposite is true. Additionally, the behavior of this infection, as stated in step k, " proceeds to infect new machines in local network and internet through several ports (137,138, 129 and 445) through the exploit that takes advantage of SMB failure CVE-2017-0145 solved with the bulletin MS17-010 and that have not been patched". Counting on the fact that not all users would have updated or patched their machines with each
new discovery of an exploit, the behavior of this infection mimicks that of a worm which tries to use a computer network in order to spread and replicate itself. Lastly, this obviously mimicks the behavior of ransomware as the encryption and asking for payment is extremely standard in that procedure.

2.  Characteristics
    - Viruses:
        - when executed, replicates itself
        - harmful activity: encrypting data
    - Worm:
        - spreads over the local network
        - relies on security failures of the target computer (the recent bulletin MS17-010)

3. Phases
    - Propagation (infection) 
        - K
    - Latency
        - B, C, D, E, G, 
    - Activation
        - H, J
    - Damage
        - ransomware: F, L, M

4. Common corporate malware detection tools have had troubles detecting the malware and therefore, general alarm was not raised until the first rescue request screen was displayed to a user because not all users immediately update to the newest patches. This can be for multiple reasons
    - users do not trust new software (the belief that the version will always have bugs)
    - procrastination of upgrading
    - patches take time and people put it off

5. The profile the attackers meet is that of ransomware organizers. It's a clearly well developed, standalone, piece of malware and has the ability to severely harm a user's workflow regardless of whether the ransom is paid or not. The mitigation measures I would recommend to a company that has not yet been infected would be to always update all machines in a synchronized, scheduled manner (perhaps by office location when everyone is guaranteed to be out of the office if the company is global), Firewalls and thorough networks set up since it was mentioned that the infection in this example was spread through email (phishing). Lastly, I would recommend the company to have a dedicated security team which is something I noticed at multiple large startups. At orientation, the security team would brief everyone on not only being preventative in one's measures but also being proactive by forwarding the security team anything suspicious, running automated scripts to detect if secret keys have been leaked to common code/snippet sharing websites, etc. 
