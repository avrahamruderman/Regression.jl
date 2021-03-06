module Regression
	using NumericExtensions
	using Optim
	using PDMats
	
	export

	# common
	append_zeros, append_ones,

	# linearreg
	llsq_qrlq, wllsq_qrlq, llsq_orth, wllsq_orth, llsq_svd, wllsq_svd,
	linearreg_lsq, ridgereg,

	# genericreg
	RegressFunctor, DifferentiableRegressFunctor, 
	evaluate_values!, evaluate_derivs!, evaluate_values_and_derivs!,
	generic_regress_objfun,

	# logisticreg
	LogisticRegressFunctor, logisticreg_objfun, logisticreg,

	# mclogisticreg
	MultiClassLogisticRegressFunctor, 
	multiclass_logisticreg_objfun, multiclass_logisticreg

	# sources

	include("common.jl")
	include("linearreg.jl")
	include("genericreg.jl")
	include("logisticreg.jl")
	include("mclogisticreg.jl")
end

