module OPDS
	module Support
		class LinkSet 
			include Enumerable
			def initialize
				@rel_store=Hash.new
				@txt_store=Hash.new
				@lnk_store=Hash.new
				@store=[]
			end

			def []=(k,v)
				@store.push [k]+v
				i=@store.size-1
				@rel_store[k]=[] unless @rel_store[k]
				@rel_store[k].push i
				@txt_store[v.last]=[] unless @txt_store[v.last]
				@txt_store[v.last].push i
				@lnk_store[v.first]=[] unless @lnk_store[v.first]
				@lnk_store[v.first].push i
				
			end

			def [](k)
				remap(@rel_store[k])
			end

			def each(&block)
				@store.each(&block)
			end

			def push(rel,link,text=nil)
				self[rel]=[link,text]
			end

			def link_url(k)
				ty,v=k.first
				t=remap(collection(ty)[v])
				t.first[1] unless t.nil?
			end
			
			def link_rel(k)
				ty,v=k.first
				t=remap(collection(ty)[v])
				t.first[0] unless t.nil?
			end

			def link_text(k)
				ty,v=k.first
				t=remap(collection(ty)[v])
				t.first[2] unless t.nil?
			end

			def size
				@store.size
			end

			def by(type)
				Hash[collection(type).map{|k,v| [k,remap(v)]}]
			end

			def links
				@lnk_store.keys
			end
			
			def rels
				@rel_store.keys
			end
			
			def texts
				@txt_store.keys
			end

			protected 
			def collection(type)
				case type.to_s
				when 'link' then @lnk_store
				when 'rel' then @rel_store
				when 'txt' then @txt_store
				end
			end

			def remap(tab)
				return nil if tab.nil? || tab.size==0
				tab.map{|i| @store[i]}
			end

		end
	end
end
