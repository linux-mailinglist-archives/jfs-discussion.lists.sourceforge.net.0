Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F7416CC5
	for <lists+jfs-discussion@lfdr.de>; Tue,  7 May 2019 23:05:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hO7GH-0006NJ-FA; Tue, 07 May 2019 21:04:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1hO6BM-0004Gx-9a
 for jfs-discussion@lists.sourceforge.net; Tue, 07 May 2019 19:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QCl+P9Pvhcm8bT0PzvtdSOMRQTtdU0uxBzsA8MfGIr4=; b=ZKh94+qvvq34/8cpKNjKvz26P5
 mklVU/WzVCGo5RFadONUs3r7+dkmMjaFbvp5YNcXhGboZfLoYyQcBgVC0mXcsTOOY+7abMiOU9j5B
 vROt/o2/B5zuiojXatnisf9Oj7G1yBoAKrGYU6yJYFxpt82HlFqzKjxbIortUmumQNHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QCl+P9Pvhcm8bT0PzvtdSOMRQTtdU0uxBzsA8MfGIr4=; b=LV0S9Pwlb0TZB/GHl4pvP058Aq
 iodD7eqHmtWQhAD0cRwy1xjBmZcdu1ogUuYm1G8NTTRAJJ18WYWV2elMGUkJq2wP2ApmPMf9vy2S5
 pXbQz0GdPtU2T7FruxIODW/mJ/KYajXoOtrMnzvDbqTTyQISui9zz/YHTyj9rhJRmFHg=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hO6BJ-00CCo5-GD
 for jfs-discussion@lists.sourceforge.net; Tue, 07 May 2019 19:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557258911;
 bh=2lI3MfI2R6JOtn/xqkExTbji1ia0pxrZ/ynV1iR60kg=;
 h=From:In-Reply-To:References:Date:To:Cc:From;
 b=KjwMrF2+V/D3k0DYNEKl9varCLtVakJMgIxa5sa4ihKClWI4ppmB0lz1yyJaUaPw9
 Ta/pbg/imhydTu7UYryMu/1Wt4reewImIe0KY/yMAWXHPQ/fRKcr+wL8S+S7vptAaN
 aKNh+BpIzeX+vfvV52RABwlLP+G8+bNSu6XfnslY=
From: pr-tracker-bot@kernel.org
In-Reply-To: <e999ebed-a882-049c-dab5-631a2c0a4ec3@oracle.com>
References: <e999ebed-a882-049c-dab5-631a2c0a4ec3@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <e999ebed-a882-049c-dab5-631a2c0a4ec3@oracle.com>
X-PR-Tracked-Remote: git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.2
X-PR-Tracked-Commit-Id: a5fdd713d256887b5f012608701149fa939e5645
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b8cac3cd24c19113982f929c65c50ce99d4cb83f
Message-Id: <155725891187.4809.18201650844855593149.pr-tracker-bot@kernel.org>
Date: Tue, 07 May 2019 19:55:11 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-Headers-End: 1hO6BJ-00CCo5-GD
X-Mailman-Approved-At: Tue, 07 May 2019 21:04:28 +0000
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for 5.2
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
Cc: JFS Discussion <jfs-discussion@lists.sourceforge.net>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pull request you sent on Mon, 6 May 2019 10:31:49 -0500:

> git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.2

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b8cac3cd24c19113982f929c65c50ce99d4cb83f

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.wiki.kernel.org/userdoc/prtracker


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
