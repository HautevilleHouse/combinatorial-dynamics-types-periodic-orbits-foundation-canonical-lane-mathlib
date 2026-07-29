import CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.BridgeLemmas
import CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

def constrainedPeriodicOrbitClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_periodic_orbit_endgame (A : AdmissibleClass) :
    constrainedPeriodicOrbitClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse
