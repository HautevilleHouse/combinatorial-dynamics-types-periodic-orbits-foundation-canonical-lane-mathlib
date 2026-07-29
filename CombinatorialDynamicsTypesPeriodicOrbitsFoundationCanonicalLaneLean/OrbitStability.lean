import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.PeriodicOrbitTypes

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure OrbitStabilityPackage where
  lyapunovExponents : List ℝ
  hyperbolic : Prop
  structuralStability : Prop

structure OrbitStabilityEvidence (O : OrbitStabilityPackage) where
  lyapunovExponentsClosed : O.lyapunovExponents ≠ []
  hyperbolicClosed : O.hyperbolic
  structuralStabilityClosed : O.structuralStability

def OrbitStabilityClosed (O : OrbitStabilityPackage) : Prop :=
  O.lyapunovExponents ≠ [] ∧ O.hyperbolic ∧ O.structuralStability

theorem orbit_stability_closed_from_evidence (O : OrbitStabilityPackage) (E : OrbitStabilityEvidence O) : OrbitStabilityClosed O := by
  exact And.intro E.lyapunovExponentsClosed (And.intro E.hyperbolicClosed E.structuralStabilityClosed)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse