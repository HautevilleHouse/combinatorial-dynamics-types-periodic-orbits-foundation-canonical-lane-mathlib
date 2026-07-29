import CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.PeriodicOrbitTypes

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure SurgeryPackage (T : PeriodicOrbitType) where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryOrbitControlled : Prop
  monotonicitySurvivesSurgery : Prop
  topologyChangeAccounted : Prop

structure SurgeryEvidence {T : PeriodicOrbitType} (U : SurgeryPackage T) where
  surgeryTimesDiscreteClosed : U.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : U.surgeryRegionAdmissible
  postSurgeryOrbitControlledClosed : U.postSurgeryOrbitControlled
  monotonicitySurvivesSurgeryClosed : U.monotonicitySurvivesSurgery
  topologyChangeAccountedClosed : U.topologyChangeAccounted

def SurgeryClosed {T : PeriodicOrbitType} (U : SurgeryPackage T) : Prop :=
  U.surgeryTimesDiscrete ∧ U.surgeryRegionAdmissible ∧
  U.postSurgeryOrbitControlled ∧ U.monotonicitySurvivesSurgery ∧
  U.topologyChangeAccounted

theorem surgery_closed_from_evidence
    {T : PeriodicOrbitType} (U : SurgeryPackage T)
    (E : SurgeryEvidence U) : SurgeryClosed U := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.surgeryRegionAdmissibleClosed
      (And.intro E.postSurgeryOrbitControlledClosed
        (And.intro E.monotonicitySurvivesSurgeryClosed E.topologyChangeAccountedClosed)))

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse
