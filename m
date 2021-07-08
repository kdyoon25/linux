<<<<<<< HEAD
Return-Path: <linux-scsi-owner@vger.kernel.org>
X-Original-To: lists+linux-scsi@lfdr.de
Delivered-To: lists+linux-scsi@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
<<<<<<< HEAD
	by mail.lfdr.de (Postfix) with ESMTP id 256C83CC607
	for <lists+linux-scsi@lfdr.de>; Sat, 17 Jul 2021 22:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235379AbhGQUQe (ORCPT <rfc822;lists+linux-scsi@lfdr.de>);
        Sat, 17 Jul 2021 16:16:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:37948 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234719AbhGQUQe (ORCPT <rfc822;linux-scsi@vger.kernel.org>);
        Sat, 17 Jul 2021 16:16:34 -0400
Received: by mail.kernel.org (Postfix) with ESMTPS id 5C04361073;
        Sat, 17 Jul 2021 20:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626552817;
        bh=R5V5R0C9S92oh4qIP/pHfW6NP+H2PzTvT66oEP3UeH0=;
        h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
        b=REFkvchDtSec1YiW/PUUqTn9cliQNpmcQ3VTdBMfwvTqwhB5GAzEBzM0JOSdwteVb
         AQfHAqAWyCW6nQatDFiu6/AFNmYh4NZtW72RAoqFt//M2QwvJzlknegejL7clWJ4x3
         t5xXGtzkSqZd1n9ReGVZ7j0qayPoxBXuHixgcQaWU24rd13Unr2v4Wa3zn9YqX8/57
         KlmEv+mgnBRVdrVFjDZVrtosQTCXT/TK4ceZek1+5+mfaw8X+qwx2zPRd4KXIaFMlb
         MoO849y3/ZcMAfYaS/3lD/2ks7lrTa4ihaFnDzgiojjfqlabYMvX15HR4sJheVAruo
         KoLJfAO/iSnGg==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
        by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 50620609EF;
        Sat, 17 Jul 2021 20:13:37 +0000 (UTC)
Subject: Re: [GIT PULL] SCSI fixes for 5.14-rc1
From:   pr-tracker-bot@kernel.org
In-Reply-To: <57d614d67af1c091c40a520bb8e2dca27e08833e.camel@HansenPartnership.com>
References: <57d614d67af1c091c40a520bb8e2dca27e08833e.camel@HansenPartnership.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <57d614d67af1c091c40a520bb8e2dca27e08833e.camel@HansenPartnership.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git scsi-fixes
X-PR-Tracked-Commit-Id: 053c16ac89050ef0e8ab9dc1edaf157bf104c8c6
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 5d766d55d163a60b709317b15db6c8bb02bf54e4
Message-Id: <162655281732.27873.12042789984497413675.pr-tracker-bot@kernel.org>
Date:   Sat, 17 Jul 2021 20:13:37 +0000
To:     James Bottomley <James.Bottomley@HansenPartnership.com>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        linux-scsi <linux-scsi@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
=======
	by mail.lfdr.de (Postfix) with ESMTP id 7D2993C27D2
	for <lists+io-uring@lfdr.de>; Fri,  9 Jul 2021 18:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbhGIRAS (ORCPT <rfc822;lists+io-uring@lfdr.de>);
        Fri, 9 Jul 2021 13:00:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbhGIRAR (ORCPT
        <rfc822;io-uring@vger.kernel.org>); Fri, 9 Jul 2021 13:00:17 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37831C0613DD
        for <io-uring@vger.kernel.org>; Fri,  9 Jul 2021 09:57:34 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id k16so13110866ios.10
        for <io-uring@vger.kernel.org>; Fri, 09 Jul 2021 09:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=H4LDaWUGEaDKw0Ax+G7pyjMnHQ5u6gDzjWtMFzsvKug=;
        b=JVD98tQi4HGAIiD1eoS6EdKx45WBTwncHbLO3N2xEcpnnoi//U4Jb31V44spseiKei
         +mFECBUeqFtrqhwmLihxXlF086mjRAGV+kOcRSbxqoFcOts11iI2f1uA39FP1hH4KxwL
         oUXEWjYPz+Q5wjJH9UVuFgD/H0Lus5sCaD2q9r8mRNOt4bbw6N5Jn2LQpRlIzQzvsPlz
         +t6sdsR6mHvuskGibhu5sOswLJnU1fsLc5VOWUIe2fcHCF1R3oSSg7JL26gQEz+VFFFi
         fOIngCYvNgKF/EA3UNaQpwIo71Xi/tgXWc/rMbQGbo6Z+cKTyLunTFJg9JBIuTC0nf9L
         nCOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=H4LDaWUGEaDKw0Ax+G7pyjMnHQ5u6gDzjWtMFzsvKug=;
        b=sSNYMMbjV/5S7pjccwW+WkySCSZB9eJtE6f2eiJ8b1mu+NWxuBIomXa9efvUD7uYZF
         m0WmrXx7ZN2kuGQu3dfjjqNRrMcfsyTfAksbEhsARUZExucjfZ5cpizM8PmjsgOPdaqc
         PkubC3CzolqFzK614jr+p2BwbIMFjo3bsot2jwl8kJpQADlTOIDVdaeiN1GJTQZ3efv5
         AugWHXnjT0N2FyH8Jybd6nw4cu17f5+G1u5hn9kHf+GchH3easaK7sllTlbI7ZtjBjFR
         s1NBLuF7FjutIxyL/Lc0XdhLHbTk//IDRaJV4qZCQfHsC4Vtlf1R/Bgh68nIF8UuleiX
         ccTw==
X-Gm-Message-State: AOAM532t9biZPLKNKl4opeK8QuUJ0zEDLOpDjI/Hf5iVIcFT2rTQwFgw
        uzmU/nEIr+9qfYj1yqNfdBi9dcu+z8sNSg==
X-Google-Smtp-Source: ABdhPJzjR/w1jNfv2DcZwyuC2UzLtb34K9KfG/LXNIW5YiIFAvFRtim8AyF74yhr6ukHY6nB0pCfHA==
X-Received: by 2002:a05:6602:2cc8:: with SMTP id j8mr13587123iow.141.1625849853524;
        Fri, 09 Jul 2021 09:57:33 -0700 (PDT)
Received: from [192.168.1.134] ([198.8.77.61])
        by smtp.gmail.com with ESMTPSA id c19sm3170961ili.62.2021.07.09.09.57.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 09:57:33 -0700 (PDT)
From:   Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] io_uring fixes for 5.14-rc1
To:     Linus Torvalds <torvalds@linux-foundation.org>
Cc:     io-uring <io-uring@vger.kernel.org>
Message-ID: <118a849b-d742-ff20-9815-6c226b8518e7@kernel.dk>
Date:   Fri, 9 Jul 2021 10:57:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
>>>>>>> 6761bd574011... [GIT PULL] io_uring fixes for 5.14-rc1
Precedence: bulk
List-ID: <linux-scsi.vger.kernel.org>
X-Mailing-List: linux-scsi@vger.kernel.org

<<<<<<< HEAD
The pull request you sent on Sat, 17 Jul 2021 07:38:43 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git scsi-fixes

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/5d766d55d163a60b709317b15db6c8bb02bf54e4

Thank you!
=======
Hi Linus,

A few fixes that should go into this merge. One fixes a regression
introduced in this release, others are just generic fixes, mostly
related to handling fallback task_work.

Please pull!


The following changes since commit c288d9cd710433e5991d58a0764c4d08a933b871:

  Merge tag 'for-5.14/io_uring-2021-06-30' of git://git.kernel.dk/linux-block (2021-07-01 12:16:24 -0700)

are available in the Git repository at:

  git://git.kernel.dk/linux-block.git tags/io_uring-5.14-2021-07-09

for you to fetch changes up to 9ce85ef2cb5c738754837a6937e120694cde33c9:

  io_uring: remove dead non-zero 'poll' check (2021-07-09 08:20:28 -0600)

----------------------------------------------------------------
io_uring-5.14-2021-07-09

----------------------------------------------------------------
Jens Axboe (1):
      io_uring: remove dead non-zero 'poll' check

Pavel Begunkov (5):
      io_uring: fix stuck fallback reqs
      io_uring: simplify task_work func
      io_uring: fix exiting io_req_task_work_add leaks
      io_uring: fix drain alloc fail return code
      io_uring: mitigate unlikely iopoll lag

 fs/io_uring.c | 191 +++++++++++++++++++++-------------------------------------
 1 file changed, 68 insertions(+), 123 deletions(-)
>>>>>>> 6761bd574011... [GIT PULL] io_uring fixes for 5.14-rc1
=======
Return-Path: <dri-devel-bounces@lists.freedesktop.org>
X-Original-To: lists+dri-devel@lfdr.de
Delivered-To: lists+dri-devel@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2BB3C1A20
	for <lists+dri-devel@lfdr.de>; Thu,  8 Jul 2021 21:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A463A6E98F;
	Thu,  8 Jul 2021 19:49:22 +0000 (UTC)
X-Original-To: dri-devel@lists.freedesktop.org
Delivered-To: dri-devel@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 259A56E98F
 for <dri-devel@lists.freedesktop.org>; Thu,  8 Jul 2021 19:49:22 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPS id 782886141E;
 Thu,  8 Jul 2021 19:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625773761;
 bh=EkdOdgkxOsnXpLPBHWVAf4lmqTozrzxO6F85vmZ7poI=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=VKtwfyMhYV+vHWVLQr4cnLIQM4ATACU226WDkxfYWJebQOXigSMvhr4janL+v0BfI
 KLDat0Pu47WWpiZPTzH0Y9q0icWEkiJJVSImZNHbKp+oD0KAxdrk2AVXTU0UuJtFPo
 t9CWkyyd8G1ll35VxWyUQBltX/BAu96sWcvoa6Vf1X98SAAPYHSQlmOOjA8PisLvkC
 kWPFXYoZsMVr7Zj+SU4rHq5xnsTAbSRqrvFjm/Tqxx98yj1SDorJInExOri/T/4Cp+
 KWPAVTeB2V5jzBhQxn0fR1UfphvnpVEms41p+ZmrsX5wlj+HqBy7phlQhsz8CKOBc1
 baJfxDUPgoWcQ==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 716D0609D6;
 Thu,  8 Jul 2021 19:49:21 +0000 (UTC)
Subject: Re: [git pull] drm fixes for 5.14-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <CAPM=9txowZc9-MVfS_uvASJMnE4Okt4B8KHCyk3nC9x=-a+w3w@mail.gmail.com>
References: <CAPM=9txowZc9-MVfS_uvASJMnE4Okt4B8KHCyk3nC9x=-a+w3w@mail.gmail.com>
X-PR-Tracked-List-Id: Direct Rendering Infrastructure - Development
 <dri-devel.lists.freedesktop.org>
X-PR-Tracked-Message-Id: <CAPM=9txowZc9-MVfS_uvASJMnE4Okt4B8KHCyk3nC9x=-a+w3w@mail.gmail.com>
X-PR-Tracked-Remote: git://anongit.freedesktop.org/drm/drm
 tags/drm-next-2021-07-08-1
X-PR-Tracked-Commit-Id: 21c355b09711e95f8f0e7c1890b343c6cd350042
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: f55966571d5eb2876a11e48e798b4592fa1ffbb7
Message-Id: <162577376145.18035.5408341954481611000.pr-tracker-bot@kernel.org>
Date: Thu, 08 Jul 2021 19:49:21 +0000
To: Dave Airlie <airlied@gmail.com>
X-BeenThere: dri-devel@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Direct Rendering Infrastructure - Development
 <dri-devel.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>

The pull request you sent on Thu, 8 Jul 2021 13:06:50 +1000:

> git://anongit.freedesktop.org/drm/drm tags/drm-next-2021-07-08-1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/f55966571d5eb2876a11e48e798b4592fa1ffbb7

Thank you!
>>>>>>> 50dd6df7782f... Re: [git pull] drm fixes for 5.14-rc1

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html
