import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure LorenzAttractorPeriodicOrbitsPackage where
  lorenzSystem : Type u
  chaoticAttractor : Prop
  periodicOrbitDense : Prop
  templateModel : Prop
  kneadingInvariant : Prop
  chaoticAttractorTerm : chaoticAttractor
  periodicOrbitDenseTerm : periodicOrbitDense
  templateModelTerm : templateModel
  kneadingInvariantTerm : kneadingInvariant

structure LorenzAttractorPeriodicOrbitsEvidence (L : LorenzAttractorPeriodicOrbitsPackage) where
  chaoticAttractorClosed : L.chaoticAttractor
  periodicOrbitDenseClosed : L.periodicOrbitDense
  templateModelClosed : L.templateModel
  kneadingInvariantClosed : L.kneadingInvariant

def LorenzAttractorPeriodicOrbitsClosed (L : LorenzAttractorPeriodicOrbitsPackage) : Prop :=
  L.chaoticAttractor ∧ L.periodicOrbitDense ∧ L.templateModel ∧ L.kneadingInvariant

theorem lorenz_attractor_periodic_orbits_closed_from_evidence
    (L : LorenzAttractorPeriodicOrbitsPackage)
    (E : LorenzAttractorPeriodicOrbitsEvidence L) : LorenzAttractorPeriodicOrbitsClosed L := by
  exact And.intro E.chaoticAttractorClosed
    (And.intro E.periodicOrbitDenseClosed
      (And.intro E.templateModelClosed E.kneadingInvariantClosed))

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse