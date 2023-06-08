#
#  The MIT License(MIT)
#
#  Copyright(c) 2016 Copyleaks LTD (https://copyleaks.com)
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# =
module Copyleaks
  class SubmissionScanning
    # @param [Boolean] internet Compare your content with online sources.
    # @param [SubmissionScanningExclude] exclude Check inner properties of SubmissionScanningExclude for more details.
    # @param [SubmissionScanningRepository[]] repositories - Check inner properties of SubmissionScanningRepository for more details.
    # @param [SubmissionScanningCopyleaksDB] copyleaksDb Check inner properties for more details.
    # @param [SubmissionCrossLanguages] crossLanguages
    def initialize(
      internet = false,
      exclude = nil,
      repositories = nil,
      copyleaksDb = nil,
      crossLanguages = nil
    )
      @internet = internet
      @exclude = exclude
      @repositories = repositories
      @copyleaksDb = copyleaksDb
      @crossLanguages = crossLanguages
    end

    def as_json(*_args)
      {
        internet: @internet,
        exclude: @exclude,
        repositories: @repositories,
        copyleaksDb: @copyleaksDb,
        crossLanguages: @crossLanguages
      }.select { |_k, v| !v.nil? }
    end

    def to_json(*options)
      as_json(*options).to_json(*options)
    end
  end
end
