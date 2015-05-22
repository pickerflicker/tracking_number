module TrackingNumber
  class UPSMailInnovations < Base
    SEARCH_PATTERN = /(\d{22,34})/ #/(\b1\s*Z\s*(\w\s*){16,16}\b)/
    VERIFY_PATTERN = /^(\d{22,34})$/

    def carrier
      :ups_mail_innovations
    end

    def matches
       self.tracking_number.scan(VERIFY_PATTERN).flatten
    end

    def valid_checksum?
      true
    end
  end
end