unitDef = {
  unitname               = [[fighter]],
  name                   = [[Swift]],
  description            = [[Multi-role Stealth Fighter]],
  amphibious             = true,
  buildCostEnergy        = 150,
  buildCostMetal         = 150,
  buildPic               = [[fighter.png]],
  buildTime              = 150,
  canAttack              = true,
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[25 8 40]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],
  crashDrag              = 0.02,
  cruiseAlt              = 200,

  customParams           = {
    description_bp = [[Caça básico]],
    description_fr = [[Chasseur Multirôle]],
	description_de = [[Mehrzweck-Tarnkappenjäger]],
	description_pl = [[Mysliwiec wielozadaniowy]],
    helptext       = [[The Swift can hit both land and air. It is effective against air units with its guided missiles and lasers, but enemy AA and air superiority fighters will kill it quickly. In numbers, it can harass land units and is suitable for raiding. Perhaps most notably, they have a passive stealth system that renders them invisible to enemy radar, and are equipped with afterburner jets that can be used to give the Swift a massive speed boost, allowing them to execute incredible combat and evasive maneuvers.]],
    helptext_bp    = [[Este caça pode atacar unidades aéreas e terrestres e protege bem outras unidades contra unidades aéreas, mas é morto rapidamente por fogo anti-aéreo e caças de superioridade aérea. Funciona melhor contra unidades terrestres quando em grandes números.]],
    helptext_fr    = [[Capable de tirer en l'air ou au sol le Swift n'est efficace qu'en groupe. Sa puissance de feu limité le rends moins éfficace qu'un aeronef dédié au combat Air/Sol ou au Air/Air.]],
	helptext_de    = [[Der Swift kann sowohl Land-, als auch Lufteinheiten treffen. Er eignet sich gut zur Verteidigung gegen Lufteinheiten, aber feindliche Flugabwehr und Luftüberlegenheitsjäger werden ihn schnell erlegen. Zuhauf kann er aber Landeinheiten durchaus auf die Nerven gehen.]],
	helptext_pl    = [[Swift to wielozadaniowy mysliwiec szybkiego reagowania, ktory moze atakowac zarowno cele powietrzne, jak i naziemne. Jest bardzo zwinny i swietnie sobie radzi z wrogim lotnictwem dzieki samonaprowadzajacym rakietom i laserom, jednak jest bardzo lekki i latwo go zestrzelic. Posiada pasywny zaklocacz radaru oraz aktywny dopalacz.]],

	specialreloadtime = [[850]],
	boost_speed_mult = 5,
	boost_accel_mult = 6,
	boost_duration = 30, -- frames

	midposoffset   = [[0 3 0]],
	modelradius    = [[5]],
	refuelturnradius = [[80]],
  },

  defaultmissiontype     = [[VTOL_standby]],
  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  frontToSpeed           = 0,
  iconType               = [[fighter]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[1280]],
  mass                   = 114,
  maxAcc                 = 0.5,
  maxDamage              = 300,
  maxVelocity            = 13,
  minCloakDistance       = 75,
  mygravity              = 1,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
  objectName             = [[fighter.s3o]],
  power                  = 50,
  script                 = [[fighter.lua]],
  seismicSignature       = 0,
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:MUZZLE_ORANGE]],
      [[custom:FF_PUFF]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:FLAMER]],
    },

  },

  side                   = [[CORE]],
  sightDistance          = 520,
  smoothAnim             = true,
  speedToFront           = 0,
  stealth                = true,
  turnRate               = 839,

  weapons                = {

    {
      def                = [[SWIFT_GUN]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 60,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
	  badTargetCategory  = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },


    {
      def                = [[MISSILE]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

  },


  weaponDefs             = {

    SWIFT_GUN  = {
      name                    = [[Mini Laser Blaster]],
      areaOfEffect            = 8,
      beamWeapon              = true,
      collideFriendly         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 7.1,
        subs    = 0.36,
      },

      duration                = 0.012,
      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 10,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      lineOfSight             = true,
      lodDistance             = 10000,
      pitchtolerance          = [[2000]],
      range                   = 700,
      reloadtime              = 0.2,
      renderType              = 0,
      rgbColor                = [[1 0 0]],
      soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/laser/small_laser_fire3]],
      soundTrigger            = true,
      startsmoke              = [[1]],
      sweepfire               = false,
      thickness               = 2.85043856274785,
      tolerance               = 2000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2000,
    },


    MISSILE = {
      name                    = [[Guided Missiles]],
      areaOfEffect            = 48,
      avoidFriendly           = true,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
      cylinderTargeting       = 6,

	  customParams        	  = {
		isaa = [[1]],
	  },

      damage                  = {
        default = 13.5,
        planes  = 135,
        subs    = 13.5,
      },

      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
      fireStarter             = 70,
      flightTime              = 3,
      guidance                = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      lineOfSight             = true,
      metalpershot            = 0,
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 530,
      reloadtime              = 5.2,
      renderType              = 1,
      selfprop                = true,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/missile_fire7]],
      startsmoke              = [[1]],
      startVelocity           = 200,
      texture2                = [[AAsmoketrail]],
      tolerance               = 22000,
      tracks                  = true,
      turnRate                = 40000,
      weaponAcceleration      = 550,
      weaponTimer             = 5,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 750,
    },

  },


  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Swift]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 300,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 60,
      object           = [[fighter_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 60,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Swift]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 300,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 30,
      object           = [[debris2x2c.s3o]],
      reclaimable      = true,
      reclaimTime      = 30,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ fighter = unitDef })
