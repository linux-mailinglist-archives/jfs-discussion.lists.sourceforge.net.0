Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B26BFAC7254
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 May 2025 22:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YTuBnxZsd7EoWoK3hq1awd2GQAxdxuln1OUoGzAXDU0=; b=NGNmd183XMf7exBJkEVUDZNYjw
	5cIGcIpoK38tXEwE2gB5pjW94qtUtew3+GbZ8PjOO74smKQ498v4D9bmIIt7IO9cyQgMpuyHwvIy+
	kjsogGk08XjjAjIvBKzkcHAEgVdD+Z1n56co3Jp/onI+ghPbFUEtG39aMjVMSNbvzoQo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uKNaL-0007LM-1a;
	Wed, 28 May 2025 20:41:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1uKNaJ-0007L8-Qq
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 May 2025 20:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x6ZVPpeGM4uJLh1m8LYKCyURN//u0or8stjAvxLDjP0=; b=GBkM2p4dhJbPVm2EASkszCpD9d
 Ov4zjnp6vMCYR0Rx0jPl6B+tDoeFLRuS6n7VLDwlFOHGter6ezDa1fw23f3wd6nJVvZLb4mTdlwO/
 4BN4nPAh5ZEfROBOQzTfDFv9ZW0QYeaETO31eK39Pz1gC8rXG3pqIal2yuZ5ZdO/XKH8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x6ZVPpeGM4uJLh1m8LYKCyURN//u0or8stjAvxLDjP0=; b=XWK4TS3L7D/iDNWF7Q7cET75AT
 +wk+fevulAhjcA0E48yRrtvHyTOwqNOOfON9i8u7hf8yDJr5dXJrn79JBuWgQHGaPmo8ztBE6EMhu
 uwmRGSqaLS9kmMjUdTOcWxoX9C7Z7tR/+je8B93F1eTw9NutqD0W5AO9DdhgQK8fOrLw=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uKNaH-0001MN-O2 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 May 2025 20:41:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 0897761F1D;
 Wed, 28 May 2025 20:40:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F689C4CEE3;
 Wed, 28 May 2025 20:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748464858;
 bh=lqsQF1t3voVLgwBz6PS1Skl2KvnQTvxGw3jOo3ETkPo=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=PmLcFuZ6ZT34Z7HvUg9xyNn+ErLL1x6DQoiz6xU/5XTSUZ0d4eze9yiV85gRi9Zeu
 dLY0slHrn6NAOJytmaR3iBkTW4kiY9pgz/MIu521nRRFYASDboSqJl5NmmN2HWyfSQ
 9093oS4drd/dZDWanez8+SRwes5H1lCqy4GK066CviTmTMTqjbL8xAgpC8T/7BuHg2
 2ob/EG34H+Otm6W42nNLRFOry3iT5HjTTMYxfRrhIZYm4ZU+hQqrstmd4x2txg7EWA
 iHMAYSL6cgXgFikDYxhlH2d1A2uvmn/bLwiLYd8hI6YTN1ZbWgyV6MZkgCS/Mgg+kb
 OYad1nQvtFnKg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 AE1B63822D1A; Wed, 28 May 2025 20:41:33 +0000 (UTC)
In-Reply-To: <ebb6fd19-0c06-4a71-b900-b99b442a4b8f@oracle.com>
References: <ebb6fd19-0c06-4a71-b900-b99b442a4b8f@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ebb6fd19-0c06-4a71-b900-b99b442a4b8f@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.16
X-PR-Tracked-Commit-Id: 5dff41a86377563f7a2b968aae00d25b4ceb37c9
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 1cbf99e47fef5a0a8cd421487e642283092f07b0
Message-Id: <174846489254.2577663.632807314466377796.pr-tracker-bot@kernel.org>
Date: Wed, 28 May 2025 20:41:32 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -3.1 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 28 May 2025 14:51:41 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.16 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/1cbf99e47fef5a0a8cd421487e642283092f07b0
 Content analysis details:   (-3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.105.4.254 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.105.4.254 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.9 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uKNaH-0001MN-O2
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v6.16
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

The pull request you sent on Wed, 28 May 2025 14:51:41 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.16

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/1cbf99e47fef5a0a8cd421487e642283092f07b0

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
