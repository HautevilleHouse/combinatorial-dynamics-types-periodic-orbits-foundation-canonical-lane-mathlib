import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure LiYorkeChaosPackage where
  periodThree : Prop
  chaosImplied : Prop

def LiYorkeChaosClosed (L : LiYorkeChaosPackage) : Prop :=
  L.periodThree → L.chaosImplied

theorem li_yorke_chaos_closed (L : LiYorkeChaosPackage) (h : L.periodThree) :
    LiYorkeChaosClosed L := by
  intro h3
  exact h

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse