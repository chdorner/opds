module OPDS
	# Represents an acquisition feed
	# @see http://opds-spec.org/specs/opds-catalog-1-0-20100830/#Acquisition_Feeds
	class AcquisitionFeed < Feed
		def facets
			return @facets if @facets
			@facets={}
			links['http://opds-spec.org/facet'].each do |facet|
			@facets[facet.facet_group]||=[]
			@facets[facet.facet_group].push facet
			end
			@facets
		end

		def active_facets
			return @selected if @selected
			@selected={}
			facets.each do |k,v|
				@selected[k]=nil
				v.each do |f|
				@selected[k]=f if f.active_facet?
				end
			end
			@selected
		end
	end
end
