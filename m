Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6112320CAA
	for <lists+jfs-discussion@lfdr.de>; Sun, 21 Feb 2021 19:40:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lDte9-0002tw-Ef; Sun, 21 Feb 2021 18:39:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1lDte8-0002tj-Cp
 for jfs-discussion@lists.sourceforge.net; Sun, 21 Feb 2021 18:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dR+rja/nA8nJ9YiorYcjymV8vQbsCjZPmNuQxl8BeGk=; b=Cjqk2pjkHEGlQpbEreIfLqB+W0
 1FX3eNjPsXjVroGc5vcAkSpm6ndloPAp0ItsR5jDkRYpCBa+JsPlxEiFz27fCjhZQcycljYT6fU7u
 ZHpOfPL3GxYfDFFTrRdjYCN6HFRe2oAGxGJpSplYyMyD5auuWBQXsFmns+4lkxudAOog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dR+rja/nA8nJ9YiorYcjymV8vQbsCjZPmNuQxl8BeGk=; b=b/DetPpMTsK6Xma7C1rkYKRtu/
 vls/ESMobW0wr4R6XgDWXy4SFfrNpV0Iv3NWi4o3ptAZPMGGjQ9042V6VrR68c/9DufNi4gcWOAav
 hne1iMWwsi0pJTnNFAQMT03lJmJjJ2T7NqgJ2B3+xdWLFZNkheto35ujrg9rO/8K7nNs=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lDtdz-000LYj-No
 for jfs-discussion@lists.sourceforge.net; Sun, 21 Feb 2021 18:39:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 498BA64EE9;
 Sun, 21 Feb 2021 18:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613932782;
 bh=mi6x5MBE2+LRZ2kcKtoRBnpU64+odAVPKOamHqfu3cE=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=Jk/Mq+Sn+ZkvJUXqEPqlK0RO7YCPtWZMZNov0rP1NK50dQhSHYGEILAusfon0ZcZB
 +9PlxDmwf5gP2r/hT4gWSSP3zz1/6hNAQMfXdnxfBtWGy/jhaoeEoowvJ9QqeciQEA
 uzEH9BO6hUbHQGUIL8MzD70Pqx60pHjrtc9nvTjget7E+4yt6laq3KrkyszsSgoxAD
 rJy7qixCJEYshdoZTUD38G04x9bn+h07m/p7eLnVxaT5XjPfKud1KQUszthrz4iWuQ
 XwJsApbW1BtIuQT8NqdNzXxlA7DdGpl1UVdFRFNNunB8wI3euccyFSgvK0yRQId6LP
 clhDVyCxG6T+w==
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain
 [127.0.0.1])
 by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 45A6460191;
 Sun, 21 Feb 2021 18:39:42 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <4605002a-b275-1190-c56d-7d888aa770a0@oracle.com>
References: <4605002a-b275-1190-c56d-7d888aa770a0@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <4605002a-b275-1190-c56d-7d888aa770a0@oracle.com>
X-PR-Tracked-Remote: git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.12
X-PR-Tracked-Commit-Id: 4208c398aae4c2290864ba15c3dab7111f32bec1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: d88e8b67a6f2f6dae41c986ed58cb1955e0179b3
Message-Id: <161393278227.20435.11982601908255141368.pr-tracker-bot@kernel.org>
Date: Sun, 21 Feb 2021 18:39:42 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lDtdz-000LYj-No
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for 5.12
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

The pull request you sent on Mon, 15 Feb 2021 10:05:32 -0600:

> git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.12

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/d88e8b67a6f2f6dae41c986ed58cb1955e0179b3

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
