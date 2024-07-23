Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D5293A950
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Jul 2024 00:27:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sWNyH-0002q1-6a;
	Tue, 23 Jul 2024 22:27:01 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1sWNyF-0002ps-OB
 for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Jul 2024 22:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=roNOSsz1dfS5DV6JhwSF1YVvvHGlMUSMYxxHOk8l/Ic=; b=g0pVyxocPZxMYPN5DyLblmlhWF
 QEbxcKQ2O4siRZhpRwpADhpjhZ7o+jt7K3YM4V9LxPBL3BzBE1/pzsjE0cWumFfIa7NQcA419ZgXD
 DK+XrV4oHyfCxfeKHyGYvhqR4i8UwmLd98RPrhoAc7Y+juba376g2MQqDT3NTk0MLTU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=roNOSsz1dfS5DV6JhwSF1YVvvHGlMUSMYxxHOk8l/Ic=; b=JfOyEpprgv82Sj9pItmdcAQxCx
 URLRl2hzepJZykDNOD/Pu5Y7yFIbsuMyZtYqZEjufWryohVzrGqJQUornbbAfZv2aY9RvkFDE3NOa
 JfhadrsFs5KB2Xq306/n0Qcjnk736sqk3dBs9uncUIMbtGbFAQMLLZPgRf3+7WF8HwVA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sWNyF-00089L-4W for jfs-discussion@lists.sourceforge.net;
 Tue, 23 Jul 2024 22:26:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C4A3360DC1;
 Tue, 23 Jul 2024 22:26:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B84FC4AF09;
 Tue, 23 Jul 2024 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1721773613;
 bh=qZ8wkkdS1/6f9bjx9ZaeHKYGJN0LmsRm2iUhVulcDDs=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Du8I+pFk543uRMNWBeZx56BYuFcDEE8TazJ8DlhKXWeUwI1VM3cJmaPUvQuFP4ePY
 M+DgaxgyPXF/tJVjZHinkTY8Qzo3W0TD7wD7VW8rRVaVaC357vQgKE1jIUxWWtpEUL
 pRxaQVZ+SUyfOqvx35z/X8s2AzqyWyFbRMo/KNtUpbfDA8JIA42q9i7Ge9kHQGLJ4C
 nnY+Q+dafVMVBJcgtdujF42N9wMCRrV6bzcWC2BbzREAnlJhNNTdvQufBa4b7mYwYr
 5J5bQODehIsavCNIG/PF0uZZbeYB89L5i2Tsa4D5wGirw4zFf/dqSKKzo9h/dOb2b1
 DUMqPRf4m198A==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 72A16C43443; Tue, 23 Jul 2024 22:26:53 +0000 (UTC)
In-Reply-To: <4a4e7343-3af8-499f-8a7c-544848a71f14@oracle.com>
References: <4a4e7343-3af8-499f-8a7c-544848a71f14@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <4a4e7343-3af8-499f-8a7c-544848a71f14@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.11
X-PR-Tracked-Commit-Id: d0fa70aca54c8643248e89061da23752506ec0d4
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 371c141464b8312ee4a298fad6d17ee26654b7d6
Message-Id: <172177361345.759.5687463486651349295.pr-tracker-bot@kernel.org>
Date: Tue, 23 Jul 2024 22:26:53 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 22 Jul 2024 15:08:00 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.11 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/371c141464b8312ee4a298fad6d17ee26654b7d6
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sWNyF-00089L-4W
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.11
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

The pull request you sent on Mon, 22 Jul 2024 15:08:00 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.11

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/371c141464b8312ee4a298fad6d17ee26654b7d6

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
