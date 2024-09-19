Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CBB97C3D9
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Sep 2024 07:20:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sr9af-0001Tb-E4;
	Thu, 19 Sep 2024 05:20:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1sr9ad-0001TV-RH
 for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Sep 2024 05:20:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9NbSaDHk6xN4QHRn9HoDspNbgvQcdY5fjHNnVYNoLec=; b=hC8FxXOipg8kxZID1NQgIJI5bX
 bEEvaCpvSIQkBXcY4qfB6B4evBJX01I0iovQPepBDWCPVvfKblo2h/d3tpoLNK8RdSZ8cPSIzGTYh
 pKBh0uLujVVTOvxK6F47ygX2RpD2D3flFqKyYllH3r2usGiqUhEbkv3HyAqc0k8mILz8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9NbSaDHk6xN4QHRn9HoDspNbgvQcdY5fjHNnVYNoLec=; b=WRnvY6RCmyukR6y22PmA+pIob5
 UaGyHOLTxz7VgeW7FyqU4Hbt1qAazR6f++bVciR4QzEVuFvUUAus8RRylvW/IXtDEoIQwmtW1NYUD
 cPN6c5MCeCO/cXskQo0H+Uqbj/SIxYymUjOpCQkJ76/T6pCME8EfhQqeL4fAiRpBxYFo=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sr9ad-0007hz-65 for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Sep 2024 05:20:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7AFE3A43AB9;
 Thu, 19 Sep 2024 05:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14CA8C4CEC5;
 Thu, 19 Sep 2024 05:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726723216;
 bh=titWnAhy02wiz6yQyvCZh7AkIzYHk1/WsXqkhpCYAmY=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=P6BwNvYgqbu6FR2mur5BVR+iMOE7q88AMol5ql4er93CsDffMTqC+9aVprY9xdy6f
 m9ltplYjkr3cbM86pCchdW9ulAjlsmmURtY/+tATTy2zCmSJf6bsUPsCWJvaqbdgGW
 jPeEI6yKah3PBYFrhAkM9FGHoJATLptCH7nKD0kgSOgPzP+KOikGTj1e2wv2CIsweB
 TSsQhmPc6ZyGjfElknkL/RTS8rxMy3kLQl4gyXfC/IJXsudUZIToiTK6JwvH+dHdSp
 Br1hjzw5ygPaRxbown9U8GYwS2rlcLnHTo1S3+8jbuaOH+sK2IH4K3DR1UONGyJcMf
 BG/zLbhG98iBA==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 2E4313806651; Thu, 19 Sep 2024 05:20:19 +0000 (UTC)
In-Reply-To: <3bf9944a-3809-4a79-99e9-d3b797c25836@oracle.com>
References: <3bf9944a-3809-4a79-99e9-d3b797c25836@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <3bf9944a-3809-4a79-99e9-d3b797c25836@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12
X-PR-Tracked-Commit-Id: 2b59ffad47db1c46af25ccad157bb3b25147c35c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: cc3804443b4b367aba9eed58bb98959376bce1d1
Message-Id: <172672321790.1036593.4035358694802075421.pr-tracker-bot@kernel.org>
Date: Thu, 19 Sep 2024 05:20:17 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 16 Sep 2024 14:45:35 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/cc3804443b4b367aba9eed58bb98959376bce1d1
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sr9ad-0007hz-65
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.12
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

The pull request you sent on Mon, 16 Sep 2024 14:45:35 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.12

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/cc3804443b4b367aba9eed58bb98959376bce1d1

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
