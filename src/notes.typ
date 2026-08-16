= Quantum mechanics foundations

== Wave-particle dictionary

$p = planck k$
$E = planck omega$

== Quantum numbers

Quantum Number: The index of an eigenvalue of an operator that commutes with the Hamiltonian.
Commuting means shared eigenstates. We can label the Hamiltonian's states by the eigenvalues of the operator.
The quantum number identifies the eigenvalue.

For the lattice the operator is the translation operator (commutes by periodicity of potential) with eigenvalue $exp(i k a)$, identified by $k$ with $a$ the lattice cell size.

There is a second quantum number: the band index $n$. One $k$ has several states.

== Probability current

No current $j prop Im{phi^* partial_x phi}$.
for non plane wave the general one is $j = planck/m Im(Psi^* partial_x Psi)$
for a plane wave $j = v |Psi|^2$

== Running vs standing waves

$ {exp(+i k x), exp(-i k x)} <-> {cos(k x), sin(k x)} $
same 2D space, two different bases.
$ exp(plus.minus i k x) = cos(k x) plus.minus i sin(k x) $
Exponential basis diagonalizes translation/momentum. Basis for transport and Bloch's theorem. Current.
SinCos basis diagonalizes reflection $x |-> -x$. cosine even (origin is antinode), sine odd (origin is node). just parity. each a standing wave. no current. basis for symmetric box.

= Crystal foundations

== Brillouin zone

Brillouin zone is $[-pi/a, +pi/a]$, because the period of $exp(i k a)$ in $k$ is $2 pi/a$.

== Probability density and DoS

$P_k (r) = |Psi_k (r)|^2$. $Psi_k$ normalized over $r$.

DoS (var change $k -> E$ via dispersion)
$ g(E, r) = sum_k P_k (r) delta(E - E(k)) $

dispersion comes from kinetic energy $E(k) = p^2/(2 m) = planck^2 k^2/(2 m)$
$ (partial E)/(partial k) = planck^2 k/m = planck p/m = planck v $

to do the actual change of variable, express old one using new one:
$ dif k = (partial k)/(partial E) dif E = ((partial E)/(partial k))^(-1) dif E = 1/(planck v) dif E $

carrier/charge density
$ n(r) = integral dif E space g(E, r) f(E, E_F) $

== Discrete vs continuous k

$ sum_k |-> integral (dif k)/(2 pi)^d $

crystal of length $L$ with periodic (Born-von Kármán) BCs $Psi(x + L) = Psi(x)$
forcing $exp(i k L) = 1 => k = (2 pi)/L n$ with $n$ integer

allowed $k$ form a lattice themselves with spacing $2 pi/L$. so always discrete $k$ with sum.
if $L$ is macroscopic, spacing becomes very small. continuous $k$, integral.
in bulk $L$ is always considered macroscopic. In confinement $L$ is nanoscopic.
This is also what makes DoS continuous vs discrete. Since dense $k$, also gives dense $E$.

$ sum_k = (L/(2 pi))^d integral dif k $

Bulk vs confinement is $L$ macroscopic or nanoscopic.

$E$ inherits everything from $k$ via dispersion. discrete $k$, discrete $E$. continuous $k$, continuous $E$.

$g(E) dif E$ is always a measure on the energy axis. it's a Dirac comb for finite $L$ (not macroscopic), placing Dirac weights at each $E(k)$ of mass $P_k (r)$.
whether this measure has a density with respect to $dif E$ (Radon-Nikodym) is another question.
the density is either an actual function (macroscopic limit) or just a distribution (honest finite crystal with discrete $k$)

== DoS by dimensionality

density of states of bulk in $n$D:

number of allowed states in $k$-space. spacing $2 pi/L$
$E$ depends on radius $|k|$
so states in $[E, E + dif E]$ is a $dif E$-thin shell in $k$-space, between two spheres
volume is sphere surface times thickness $= k^(d-1)$ times $dif k$

convert to $E$: $dif k = 1/planck^2 m/k dif E prop k^(-1) dif E$

volume is $k^(d-1)$ times $k^(-1) dif E = k^(d-2) dif E prop E^((d-2)/2) dif E$
$ g(E) prop E^((d-2)/2) $

in 2D they cancel exactly. constant, flat.

3D bulk in macroscopic limit gives density $g prop sqrt(E)$
3D transverse bulk + longitudinal 1D confinement gives steps (actual density with jumps)
3D with 2D confinements gives $1/sqrt(E)$ spikes
3D confinement gives atoms, actual distribution, not function.

at least one unconfined direction is required for a density, otherwise we have a discrete measure / distribution.

= Boundary conditions

== Closed: Dirichlet and Neumann

Closed BCs are EVP $H Psi = E Psi$. Output is spectrum. Allowed $E$'s are output. Zero RHS. Real states, normalizable, bound. Standing wave. Zero current.

Dirichlet (closed) allows no current.
Dirichlet BC gives an EVP.
We get a spectrum out. $E$ as eigenvalues come out. $E$ is not a free parameter.
in the case of confinement (nanoscopic $L$) the spectrum is discrete.
States are normalizable bound states.
Wavefunction can't enter or leave. Eigenstates are real standing waves.
This is because homogeneous Dirichlet reflects (node at origin (left wall) $->$ sine) the wave. same ingoing outgoing $sin(k x) = (exp(i k x) - exp(-i k x))/(2 i)$. cancelling, zero current.
Dirichlet BC is exact for infinite barrier quantum well.
For finite barrier, make domain wide enough beyond barrier, such that state has decayed enough. error shrinks exponentially in overhang.

(Homogeneous) Neumann BCs are also closed. they give rise to antinodes (cosine) instead of nodes at the boundary. negative reflection.
again standing waves. Still EVP

== Periodic

Periodic BC allows for moving current, but no injection.
Periodic BC. states are $exp(i k x)$ running (carrying current). Allowed $k = (2 pi)/L n$, with $n$ all of $ZZ$
Homogeneous Dirichlet BC. states are $sin(k x)$ standing (no current carried). Allowed $k = pi/L n$, with $n$ only positive $n >= 1$, because $sin(-k x) = -sin(k x)$ double counting.

== Open: Robin, radiation, DtN

Open BCs are LSE $(E - H) Psi = S$. Output is single state. $E$ is parameter input. RHS is injection vector. Complex state, non-normalizable, scattering. Nonzero current.
Open allows for injecting current.

Open BCs. requiring the wave to be OUTGOING (Sommerfeld radiation condition)!
$E$ is a parameter, it's given in. Helmholtz. no EVP. LSE. Not Dirichlet, not Neumann (both closed), but instead Robin!
At contacts potential is flat. we get analytic plane waves $a exp(+i) + b exp(-i)$. we require only outgoing, no incoming $=> b = 0$, leaving only $a$. The incoming part reenters as the injection vector $S$.
Differentiating gives
$ partial_x Psi = i k Psi $
This is the Robin BC. It encodes outgoing.
A Robin BC relates Neumann (derivative) and Dirichlet (function value) boundary data. It's a DtN map!!! (so simple because 1D. In general DtN is a non-local operator)

important flat contacts $=>$ constant potential! not constant wavefunction (therefore not homogeneous Neumann BC for open!)

= Wave function formalism

== Analytic barrier

L3.4: analytic computation through potential barrier.
piecewise-constant potential $=>$ analytically solvable.
ansatz in each region with interface matching.
3 regions, left, right and barrier in the middle. each 2D solution space.
left and right are plane waves $exp(plus.minus i k x)$ with $k = sqrt(2 m (E - V))/planck$
middle also has plane wave, but either decaying or oscillating depending on energy vs potential $V - E$
$exp(plus.minus kappa x)$ with $kappa = sqrt(2 m (V - E))/planck$.
6 unknowns. 2 interface points at barrier. each fixing value and derivative. 4 DOFs fixed.
remaining 2 unknowns are data, the two incoming waves at the left and right. default setup $a_L = 1$, $a_R = 0$. injection from left. or other way around. 2 setups. 2 RHS in open BC SE. one per contact.
solving gives transmission probability $T = k_R/k_L |t|^2 = v_R/v_L |t|^2$. $T + R = 1$ transmission vs reflection.

== Transmission through a barrier

L3.5 What does transmission through a barrier look like. Sketch $T(E)$.
$E < V$ tunneling. $T approx exp(-2 kappa L)$ exponentially small.
$E > V$ oscillating. $T = 1$ only if barrier width whole number of half-wavelengths. $L = n lambda/2$. interference with reflected wave between interfaces.
Graph, flat near zero, exponentially through $E = V$, then wiggling touching 1 with shrinking dips.

== Injection ansatz

injection ansatz
left: $phi = a_L exp(+i k_L x) + b_L exp(-i k_L x)$
right: $phi = a_R exp(-i k_R x) + b_R exp(+i k_R x)$
$a$ always incoming (toward device), $b$ always outgoing (away from device)
for only left injection ($a_L = 1$, $a_R = 0$) we have $b_L$ as reflection and $b_R$ as transmission
for transmission we usually look at $b_R/a_L$.

== Discrete open BCs: self-energy and injection vector

contact dispersion relation
$ k_L = 1/(Delta x) arccos(-D_L/(2 T_L)) $
obtained from equation at site $i = -1$ involving $phi$ at $-2, -1, 0$

equation at site $i = 0$ eliminates $b_L$
$ b_L = Psi_1 exp(i k_L Delta x) - a_L exp(2 i k_L Delta x) $

equation at site $i = 1$
$
  (D_L + T_L exp(i k_L Delta x)) Psi_1 + T_L Psi_2 = -a_L T_L (1 - exp(2 i k_L Delta x))
$
where the factor for $Psi_1$ is $-Sigma_(1 1)$ and the RHS is injection $S_(1 1)$

We arrive at
$
  (E - H - Sigma) Psi = S,
  quad Sigma_(1 1) = -T_L exp(i k_L Delta x),
  quad Sigma_(N N) = -T_R exp(i k_R Delta x)
$

The retarded self-energy $Sigma^R$ is exactly the DtN in its matrix form!!! That's why $Sigma^R$ only has entries at the boundary $(1,1)$ and $(N,N)$.
$Sigma^R = -t exp(i k Delta x)$ non-Hermitian, therefore doesn't preserve probability. probability leaves and enters domain.

Source $S$ is the incoming wave we deleted by the Robin BC. We add it back as an inhomogeneity.

This is a Schur complement. $Sigma^R$ is the Schur complement of the contact block. Think about this maybe.

== Leakage rate

Anti-Hermitian part is leakage rate $Gamma = i(Sigma^R - Sigma^A) = -2 Im(Sigma^R) = planck v/(Delta x)$

== Two right-hand sides

We solve the equation for 2 different RHS. one for each contact/injection.
Once $S_(1 1)$ and once $S_(N N)$ nonzero. We put both RHS as columns into a RHS matrix.
There are two independent propagating/scattering states. We solve for both.
Each has its own reservoir $f(E, E_F^L)$ and $f(E, E_F^R)$. They are related by $E_F^L - E_F^R = q V$
We may not superpose. they have different occupations. they do not superpose.

== Charge density and current

Charge density:
$
  n(x) = integral (dif E)/(2 pi planck v) |Psi^L (r)|^2 f(E, E_F^L) + |Psi^R (r)|^2 f(E, E_F^R)
$

we have $j = q |Psi|^2 v$ for the current. we can use this on the opposite of the injection and only look at the outgoing transmitted wave. particularly simple. we can choose the probe point, because of the coherent transport of current. it's conserved.

$ I_(L R) = q/(2 pi planck) integral dif E space |Psi^L (x_N)|^2 f(E, E_F^L) $

This is transmission $T = k_R/k_L |Psi^L (x_N)|^2$
We have time-reversal symmetry. $T_(L R) = T_(R L)$

== Landauer-Büttiker

We get the *Landauer-Büttiker* formula:
$
  I = (2 q)/h integral dif E space T(E) [f(E, E_F^L) - f(E, E_F^R)]
$

$T(E)$ is the device physics.
$f^L - f^R$ is the driving force. zero for same Fermi level. equilibrium.

= Poisson and self-consistency

$ nabla dot (epsilon(r) nabla phi(r)) = -rho(r) $
flux $j = epsilon(r) nabla phi(r)$ is conserved.
at interface $epsilon$ jumps but flux stays continuous.

charge is $rho = q(p - n + N_D^+ - N_A^-)$

self-consistent Schrödinger-Poisson solver
$ phi -> V = -q phi -> "Schrödinger" -> Psi -> "charge density" n -> "Poisson" -> phi $

Nonlinear. Iteration needed.

trivial plugging back in, fails and diverges, because charge responds steeply (exponential) to potential.
Newton method needed, that uses derivative.
stop once change in $phi$ is below tolerance.

screening: carriers move to oppose the field. the field they create cancels out the applied one.
this is what the Schrödinger-Poisson loop does.

= Green's function formalism

== Retarded and advanced

$ G^R = (E - H - Sigma^R)^(-1) $
$ G^A = (G^R)^dagger $

$ phi = G^R S $

with $Sigma^R$ only two entries at the contacts.

== From the squared wave function to the lesser function

We are interested in $|Psi|^2$, so
$Psi Psi^dagger = (G^R S) (G^R S)^dagger = G^R S S^dagger G^A$
with diagonal equal to $|Psi|^2$

$Sigma^< := S^L (S^L)^dagger f_L + S^R (S^R)^dagger f_R$, the lesser self-energy, where the occupation/fermi lives. two entries (1,1) and (N,N) equal to $|S_(1 1)|^2 f_L$ and $|S_(N N)|^2 f_R$ respectively.
This is built from two vectors $S^L = (S_(1 1), 0, dots, 0)$ and $S^R = (0, dots, 0, S_(N N))$.
$G^< := G^R Sigma^< G^A$

== Broadening

Broadening $Gamma$ [energy] how blurred the energy level is (energy width). Comes from Energy-time uncertainty relation.
$Gamma/planck$ is a rate, how fast the quantum state empties/leaves the domain.
lifetime $tau = Delta x / v$. $Gamma = planck/tau = planck v / Delta x$
decay of state $exp(-t/(2 tau)) = exp(-Gamma t / (2 planck))$
comes from the negative imaginary part of the energy, giving time evolution $exp(-i E t / planck)$
strong coupling of the system to the contact, means fast rate/escape with a very blurry level.

why imaginary energy? because hamiltonian gains complex part from self-energy.
$H + Sigma^R$ with $Sigma^R = -t exp(i k Delta x)$
$Gamma = -2 Im Sigma^R = i(Sigma^R - Sigma^A)$
complexity $<->$ open

$Gamma$ is the rate at which the boundary site and the contact exchange electrons. no direction.

== Lesser and greater self-energies

$Sigma^< = i Gamma f$ now gives direction. How fast does the contact put electrons in! in-scattering/filling.

the reverse is
$Sigma^> = -i Gamma (1-f)$ out-scattering/emptying

f refers to how filled the _contact_ is. not the domain!
full contact $f=1$ only injects $Sigma^> = 0$
empty contact $f=0$ only drains. $Sigma^< = 0$
$Gamma$ is the channel, $f$ is how full the contact is. the direction follows: electrons to give ($f$) or room to accept ($1-f$).

== Charge density

from the broadening we build the lesser self-energy
$
  G^< = G^R Sigma^< G^A
$

the diagonal carries the electron density
$n(x) = -i integral (dif E)/(2 pi) G^<_(x x) (E)$

== Spectral function

Spectral function $A$. it's the spectrum.
It's the density of states of the open device.

Closed device. sharp levels, DOS is a comb of deltas.
Open device. each level acquires energy uncertainty/width Gamma (broadening). Each delta becomes a Lorentzian.
So A is the broadened comb.

$"DOS"(x, E) = 1/(2 pi) A_(x x) (E)$
$A = i (G^R - G^A) = -2 Im G^R$
$(E - H)$ is singular at eigenvalues (Helmholtz resonance). so it blows up.
but now we don't have Dirac deltas, so no poles, but a Lorentzian peak instead. the imaginary part is the height of the peak.
There's a finite amount of state at an energy eigenvalue.

$A = i(G^> - G^<)$
occupations cancel out here. all states = empty + occupied.
$G^> - G^< = -i A (1-f) - i A f = -i A$

== Transmission

transmission $T(E) = tr(Gamma_L G^R Gamma_R G^A)$
how does left and right interact. transmission between left and right.

Landauer gives $I = (2 q)/h integral dif E space T(E) (f_L - f_R)$

= TODO

- Quantum Barrier analytic derivation
- Discrete Open BCs derivation.
