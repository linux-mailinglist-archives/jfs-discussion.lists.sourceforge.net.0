Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 211AA2DB9B7
	for <lists+jfs-discussion@lfdr.de>; Wed, 16 Dec 2020 04:44:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kpNjq-0003Xv-Ed; Wed, 16 Dec 2020 03:44:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1kpNjo-0003Xn-OZ
 for jfs-discussion@lists.sourceforge.net; Wed, 16 Dec 2020 03:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EvMmvBNEf44vTrG4V7WIECItOrzR9jQBcXxy5dtnfkc=; b=JoHhqobkY/bEUVIx31kSIHip0j
 lQgImegADADyudDARr9+C3YI0VG3t3p1fU1045PT5oAm0PG/hy4OvEUdwc1cZAYHY8hGtAxKtGJ68
 Gacsw61KLC9wkXIs+RClawzpJfJStBndNv/6mryMVrbnK15+kPDbVoqh5RWGy2uMFUZE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EvMmvBNEf44vTrG4V7WIECItOrzR9jQBcXxy5dtnfkc=; b=AhaDcmCPnmx2/ITCe1Ekg1qJbf
 n9t8f9ZkwgEE2ED3wsKUM6CyZ7fSqfR14tnIMDGpAkMxcWe9gaFiqzZMCXUAmG54ItRF72Jf5Lotk
 cXWDV7S1OIy1Bw8GXDIdObe7UJThOI/wnqsV0alV/Ul9JPPL7fDfdAfUouB14Tld1yGE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kpNjb-00FyBs-W6
 for jfs-discussion@lists.sourceforge.net; Wed, 16 Dec 2020 03:44:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608090250;
 bh=0vMZbc838Z2+PRYqILASr0ORQPRMUSm2pHdwiVFzahc=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=FkKcgVu0h/c4z7g2OhvHJyzk2XDjaQJfdKu9LxfXL93g4GN4B2WMuNQP7Eqe3xmj2
 jds8Y5WqcCnWWFUoHaeEA9YGhTkwgkHgD6izBUxppIj/zRqgdTyKl0MarBX+xBSw+G
 iDZ6sl+T4/zJN8FepAvQ8/kyLU7Uk/vi0dxYUTbKLN2DkAdrCRFoRtTa2+bNtTWw8A
 L0iPDwB/Fk92fwt/l8njnmHZL2ArdNaTxvDsFIyMZrPe7SpsOez0D0b9kFIrOflf/+
 28P02bTgN0wurIfhC91rn0effcD3T3xJfhM0Oe9tWblhKlin1OMK/J47jdW9cfA1Gz
 VattIVejEhkUQ==
From: pr-tracker-bot@kernel.org
In-Reply-To: <819c9249-ee95-7d67-0577-b9b1f7c09832@gmail.com>
References: <819c9249-ee95-7d67-0577-b9b1f7c09832@gmail.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <819c9249-ee95-7d67-0577-b9b1f7c09832@gmail.com>
X-PR-Tracked-Remote: git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.11
X-PR-Tracked-Commit-Id: c61b3e4839007668360ed8b87d7da96d2e59fc6c
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 9867cb1fd510187d8f828540bdb48f78fceb70b3
Message-Id: <160809025049.9893.2284380491965731001.pr-tracker-bot@kernel.org>
Date: Wed, 16 Dec 2020 03:44:10 +0000
To: Dave Kleikamp <dkleikamp@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kpNjb-00FyBs-W6
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for 5.11
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

The pull request you sent on Mon, 14 Dec 2020 12:07:50 -0600:

> git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.11

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/9867cb1fd510187d8f828540bdb48f78fceb70b3

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
