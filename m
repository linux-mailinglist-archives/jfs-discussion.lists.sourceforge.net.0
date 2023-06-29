Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DECF742EFF
	for <lists+jfs-discussion@lfdr.de>; Thu, 29 Jun 2023 22:52:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEycP-0001wq-Ro;
	Thu, 29 Jun 2023 20:51:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1qEycL-0001wg-8Y
 for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Jun 2023 20:51:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ECo/TkuNRTzTyG1ZoaRmqui9QVf0F3fWl+UjVbvDoVY=; b=H+Zy0K5EbCa0I+MPKMv3z6aNAT
 EJE2/9AsI7lUCITs/pLVlGF/79ifDSVcdtuLm45EU4aSFh5MRxQMyv88u2PYuKjeOBatKPm9O3niq
 YcT3qXmc5ONBU3HVChbBvGcqyKGTSWdf7EGEFKjF+lhfucDrQdkQeXYhvnDgiSG0TXfI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ECo/TkuNRTzTyG1ZoaRmqui9QVf0F3fWl+UjVbvDoVY=; b=VecSAvkbEhFoEdl9DwSoNstyw+
 a42qpiKMhh2pBVJhY/YydQKnvkCNDH21R7xH1qwSkTic3mMJR4k6Kof6YAllfbQAk5Tzz9vCuF65S
 6snlasipVAR57U4D1rhw4GZRe2egMjlBY9Tq2DZANGDZ6SrFMmxK2QCZ5DlKb7htzPys=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEycH-0000ct-Sv for jfs-discussion@lists.sourceforge.net;
 Thu, 29 Jun 2023 20:51:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4753861633;
 Thu, 29 Jun 2023 20:51:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EB5C433C8;
 Thu, 29 Jun 2023 20:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1688071900;
 bh=8A7A32gALfnhjzft8+IJHdrDaXDUT1+cutM2HkVtR64=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=UrJRbarGqCBDMCGrLFUxTQBrj5zG63N4XFpHc5vAyfBsFmW4nVM9LeMiIxSlSVeeR
 e7iqTu3fxBI1YK0LpIEYehdG/nFa5889b2CJJkmYkxZ5pA8PwyRfj1pwe6x0p670pm
 gSEbe6kpkbQFYLaYrbZNJ6wMDFQJDNyQQA8Bw4E/kTs5zJ+OSy2vtK+HRmED0QqgJp
 O9GiGsJkCfb29tfEcoGERFjasI5Ewztjmr47DMg7wHwY0Ifld6l+U1YOzC8h+z5rhn
 dbz+cph0gt1GiWq5XeAshl/er+h0cijcrrKiADNf5oosz45x0Mf36sPxcV50GkUKfY
 Ns2k4+uzDbFNg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 9EC79C40C5E; Thu, 29 Jun 2023 20:51:40 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <0c277be9-a3be-2c23-a016-82238fc946eb@oracle.com>
References: <0c277be9-a3be-2c23-a016-82238fc946eb@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <0c277be9-a3be-2c23-a016-82238fc946eb@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.5
X-PR-Tracked-Commit-Id: 95e2b352c03b0a86c5717ba1d24ea20969abcacc
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b9d02c224d00a412d9c7fb1f92c358604038a783
Message-Id: <168807190064.21634.1464816030990376881.pr-tracker-bot@kernel.org>
Date: Thu, 29 Jun 2023 20:51:40 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Tue, 27 Jun 2023 09:07:41 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.5 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/b9d02c224d00a412d9c7fb1f92c358604038a783
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qEycH-0000ct-Sv
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.5
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Tue, 27 Jun 2023 09:07:41 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.5

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b9d02c224d00a412d9c7fb1f92c358604038a783

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
