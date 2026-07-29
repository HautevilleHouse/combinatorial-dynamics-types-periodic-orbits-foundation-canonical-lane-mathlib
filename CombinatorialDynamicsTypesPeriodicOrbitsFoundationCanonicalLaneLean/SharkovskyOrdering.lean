import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure SharkovskyOrderingPackage where
  orderingList : List ℕ
  periodForcing : Prop
  minimalPeriodThree : Prop
  topologicalEntropyPositive : Prop
  minimalPeriodThreeTerm : minimalPeriodThree
  periodForcingTerm : periodForcing
  topologicalEntropyPositiveTerm : topologicalEntropyPositive

structure SharkovskyOrderingEvidence (S : SharkovskyOrderingPackage) where
  periodForcingClosed : S.periodForcing
  minimalPeriodThreeClosed : S.minimalPeriodThree
  topologicalEntropyPositiveClosed : S.topologicalEntropyPositive

def SharkovskyOrderingClosed (S : SharkovskyOrderingPackage) : Prop :=
  S.periodForcing ∧ S.minimalPeriodThree ∧ S.topologicalEntropyPositive

theorem sharkovsky_ordering_closed_from_evidence (S : SharkovskyOrderingPackage)
    (E : SharkovskyOrderingEvidence S) : SharkovskyOrderingClosed S := by
  exact And.intro E.periodForcingClosed
    (And.intro E.minimalPeriodThreeClosed E.topologicalEntropyPositiveClosed)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse