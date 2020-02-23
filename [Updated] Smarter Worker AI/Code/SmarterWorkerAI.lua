VanillaChooseWorkplace = ChooseWorkplace
ChooseWorkplace = function(unit, workplaces, allow_exchange)
  spec_workplaces = { }
  for _, workplace in ipairs(workplaces) do
    if workplace.specialist == unit.specialist then
      spec_workplaces[#spec_workplaces+1] = workplace
    end
  end
  
  local best_bld, best_shift, best_to_kick, best_specialist_match
  
  best_bld, best_shift, best_to_kick, best_specialist_match = VanillaChooseWorkplace(unit, spec_workplaces, true)
  
  if best_bld and best_shift then
    return best_bld, best_shift, best_to_kick, best_specialist_match
  else
   return VanillaChooseWorkplace(unit, workplaces, allow_exchange)
  end
end
-- END OF WORKPLACE