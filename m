Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 550D8152663
	for <lists+jfs-discussion@lfdr.de>; Wed,  5 Feb 2020 07:40:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1izEMO-0000Hn-Dt; Wed, 05 Feb 2020 06:40:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1izEMN-0000Hg-63
 for jfs-discussion@lists.sourceforge.net; Wed, 05 Feb 2020 06:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9VvaaejHaXOvpxCxSwBgLvBA1sj31aY97f+JcY18FAg=; b=E4raTiX6RQ0lqHGq9MYlU8S9ih
 CYhMkb3xQe8MbYXhCOVtw9X7S9SNwsvtf5RWGielLTIdyJUT2ESqm543sksXcZupMNkJKCNl0kbnT
 VP2YKPTBqxcoLtzgXRdB/a2klVCfYVnJFx4Mnk3Hi/32ripI+Irzop6g5CKyTOdd8TEk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9VvaaejHaXOvpxCxSwBgLvBA1sj31aY97f+JcY18FAg=; b=iCBGNf9H1im5mTZ5vTG+Vt66dW
 lg3mRB73+MEouvKJqC4Ccex2Im+vEQ2bp1+vJAIYs4pzSGC36iHe9kDn229/UGQKGtCwLdFEUFeFU
 tADdfl6ILC6zzF+Qn78sX0NOxRblQ2c2Y7hvTJwwKQNFKjxKJr8mWkjLly+YwOWjXLMM=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1izEML-00HRB2-5p
 for jfs-discussion@lists.sourceforge.net; Wed, 05 Feb 2020 06:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580884814;
 bh=/6/204LznVKEKmIO54WGYihW+G8/eo1p8Sjxlh3ReZA=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=10sjv+IRNBGGpA80IaKq6iYOEB6kTSOK7nRDtbKEqO1DkiK0EeD4AOBhEtfkdIkVe
 vFG+AcxzVmAiKSBv1cC2ggqMKYLDaSAND6eiwtiGJn03KylmeqIadh/TketXYWyJ8X
 EylL2IeK+Hoy6p3GH9fDLMyXKbcbPHd5fTpgQjRw=
From: pr-tracker-bot@kernel.org
In-Reply-To: <ce930730-248c-7e5c-dbf6-7ba5a2db07b0@oracle.com>
References: <ce930730-248c-7e5c-dbf6-7ba5a2db07b0@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <ce930730-248c-7e5c-dbf6-7ba5a2db07b0@oracle.com>
X-PR-Tracked-Remote: git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.6
X-PR-Tracked-Commit-Id: 802a5017ffb27ade616d0fe605f699a3c6303aa3
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 51a198e89a96c34b3944034b2ebda9002ff57827
Message-Id: <158088481481.15873.16070944296633751179.pr-tracker-bot@kernel.org>
Date: Wed, 05 Feb 2020 06:40:14 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1izEML-00HRB2-5p
Subject: Re: [Jfs-discussion] [GIT PULL] jfs update for v5.6
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Tue, 4 Feb 2020 09:31:35 -0600:

> git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.6

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/51a198e89a96c34b3944034b2ebda9002ff57827

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
