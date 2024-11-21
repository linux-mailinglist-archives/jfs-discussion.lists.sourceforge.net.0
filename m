Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 430BD9D5252
	for <lists+jfs-discussion@lfdr.de>; Thu, 21 Nov 2024 19:05:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tEBYe-0007Q1-Os;
	Thu, 21 Nov 2024 18:05:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1tEBYd-0007Pv-Mg
 for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Nov 2024 18:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xA1Ysa3GAFe4gcah/+rBuENBr3p3UNkFthfw4ZEAW9Y=; b=MOGzmgh2TpnpT2yomtBJmmiZEd
 YRbZ6lacwApIF1AmpZPWpRAFQNAfyYvTPW/UFh+0PRlETXV75yuM+EJmw3hd5EKY3xQAXM5T3A41h
 ARdDp9EeG8WCsAoADdaoQROoXJHF5TPHi1vzWHFn9hNOM1yYNgPNh76nyEJ1dto/e/4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xA1Ysa3GAFe4gcah/+rBuENBr3p3UNkFthfw4ZEAW9Y=; b=RNzbO7iVMh3d70fwGIQvuAbCGs
 ZOpWaCULGaRuPoimeg3ItK5ydkt1+E6t9QoaCN1s07VspifUOgmN3EAE9aQJDzlk3kuOLFYcCDbuK
 92Qdyyd1vOV/2lprODXf36ekTBa+fDYIsqMkM8odbIicDoCL4x1+g9Q+ATn+ujaqKj4c=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tEBYc-0004GJ-HE for jfs-discussion@lists.sourceforge.net;
 Thu, 21 Nov 2024 18:05:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 43C985C58C9;
 Thu, 21 Nov 2024 18:04:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C72E2C4CECC;
 Thu, 21 Nov 2024 18:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1732212323;
 bh=x145maFELT1xf0Ew8K5/LYapqSlmFJ+ICIPNKO2PBlM=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=jqnk2ce/zLS+TaUGfg/ult9SIGpmvi4JXi0jMy9QJUFvtq8zx0xc46/ZJTiyQyVC2
 JwzQoitjKignRfB4RzJRmg6cPGITdz7ApZ/knMgTsImTD2Wuq4H6Ooox1hClFUch3K
 y2K6rDnB7sBaGD8g6x29FMrxLNlCLbND2yLe8uk3ITMkvtWBou8ETkkicURPnbBQL6
 oDCZQI0kEBq6GcnC7Qcvl9Gj0MqwKcSd++TwSpTgytpht79kOO4I9iKPG947ixzuM2
 RWvkb06qdud9+Tg9Uey+QbqOyWtDdyPBZI4DvMDYXSzQ5dGvMVX0UzLGo7PK0B2y+f
 07nwEIVp0VM4Q==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EAE863809A00; Thu, 21 Nov 2024 18:05:36 +0000 (UTC)
In-Reply-To: <9c4c2b58-be98-42c6-8ae6-582c60bc9f7b@oracle.com>
References: <9c4c2b58-be98-42c6-8ae6-582c60bc9f7b@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <9c4c2b58-be98-42c6-8ae6-582c60bc9f7b@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.13
X-PR-Tracked-Commit-Id: a174706ba4dad895c40b1d2277bade16dfacdcd9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: fc39fb56917bb3cb53e99560ca3612a84456ada2
Message-Id: <173221233541.2032550.17743406020495170747.pr-tracker-bot@kernel.org>
Date: Thu, 21 Nov 2024 18:05:35 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 21 Nov 2024 10:08:53 -0600:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.13 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/fc39fb56917bb3cb53e99560ca3612a84456ada2
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tEBYc-0004GJ-HE
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.13
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
From: pr-tracker-bot--- via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: pr-tracker-bot@kernel.org
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Thu, 21 Nov 2024 10:08:53 -0600:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.13

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/fc39fb56917bb3cb53e99560ca3612a84456ada2

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
