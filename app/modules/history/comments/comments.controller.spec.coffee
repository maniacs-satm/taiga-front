###
# Copyright (C) 2014-2015 Taiga Agile LLC <taiga@taiga.io>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# File: subscriptions.controller.spec.coffee
###

describe "CommentsController", ->
    provide = null
    controller = null
    mocks = {}

    beforeEach ->
        module "taigaHistory"

        inject ($controller) ->
            controller = $controller

    it.only "set modification type", () ->
        commentsCtrl = controller "CommentsCtrl"
        commentsCtrl.name = "us"

        commentsCtrl.setModifyType()
        expect(commentsCtrl.modifyType).to.be.equal("modify_us")
