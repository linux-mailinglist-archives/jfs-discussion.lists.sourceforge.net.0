Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wA3hN6wmjmlrAAEAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Feb 2026 20:14:52 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B46F1309B9
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Feb 2026 20:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4LYGNHPs0wWYeLBGGIum9UnNb1i7Lw3OAOQQL2GdRAI=; b=fkt7kkr2R8Be3RnmM6BvGCHr8C
	n3Nvqfd4gttCjJlWkQjsLZKNqCkDM34WHlJ3hXKxUyOO/uGuaeNHmAkOE1l8f8zd0nX2fNPT7qUgR
	dz/Xt1JnWJXDNky1rDdXbaJmBxChNMdrOtnQgcqhAjaDX+ub+XoLjCyu0s07502ZdMR4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vqc8k-0006Gb-Uj;
	Thu, 12 Feb 2026 19:14:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1vqc8k-0006GS-1g
 for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Feb 2026 19:14:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=++X3G7676HLsdOTlvjW09meiBnbqhLtxbFtTL9y96y0=; b=A2lNjPWLcUCmlb8r1BKJYfScdb
 LbMvGQ1kAkWHlO1FnptEwxCVPm5qeJf8mPLXcvY18D9zfoASasd1mhum1W9av/RNX1jWtDUvrypRq
 R+yvRPuZ0a7W/uBFxHEU/NegJQs29IX6V/Gq7/6ai30/6bMi8yEH0JLTjmYRMk8AlNm4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=++X3G7676HLsdOTlvjW09meiBnbqhLtxbFtTL9y96y0=; b=A+0IBt2hjG83qUxB0FUraZNb6c
 xzofUxT0x6rZPUWwJrfruGGifhONft7SGNwyd/URtM5dj/gjLdgii0BqRgr+SbnmE4Vl43c9J3bT9
 ezAd/xxLCo/B/QHLK7AU/nDvJiU8vHlBh5jCLsXPI67NhnCD6Q5Khr7X1CPe/Jqh0Jbs=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vqc8i-0005MU-NH for jfs-discussion@lists.sourceforge.net;
 Thu, 12 Feb 2026 19:14:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6F25443E2A;
 Thu, 12 Feb 2026 19:14:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CC54C4CEF7;
 Thu, 12 Feb 2026 19:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1770923647;
 bh=puEzgtS2JFJ/IKXhhPvwAqXGccDuzd8NJZBhWThwmKA=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=KQO6FyGve20ywNPmGXBPL3yHUSnYzZo4UHUr7ogVGLoVlwMHY4r1qBaHBvYDfPiJY
 IvKGz6vnfcxZJOJYQqo633BmeJWPMzuCO5dhvts2RcqhhZuqHws4dydbAZ0c5nA6CU
 Ibh9/gtBrIHhBLT2qnWvZOCDKH90c++rKlExQZpD4Pw0USJOIwLHFzsw7uZHEoNhl1
 e21+hPRAuB/rilp6BDQ/AMPDpOxjf58V5QA3AFLwYgT7H1R7FdQdCdj5wWKvEkFxog
 fm8Tjiuq0345ae99nvuq677VUmkv3wZULc2kjjsSmUeeGQEbgd2AGnvV5EE5i4LT/D
 Ofq4PGtEVK60A==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 C219F3800346; Thu, 12 Feb 2026 19:14:02 +0000 (UTC)
In-Reply-To: <7616456b-6373-4e87-91e1-430b2eae25d9@oracle.com>
References: <7616456b-6373-4e87-91e1-430b2eae25d9@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <7616456b-6373-4e87-91e1-430b2eae25d9@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-7.0
X-PR-Tracked-Commit-Id: 7833570dae833028337bb53b7f389825b910c100
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 178574549e421755dbe1e4721e20ca6c10af4900
Message-Id: <177092364124.1663336.11952904263068603999.pr-tracker-bot@kernel.org>
Date: Thu, 12 Feb 2026 19:14:01 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 11 Feb 2026 15:46:02 -0600:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-7.0 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/178574549e421755dbe1e4721e20ca6c10af4900
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vqc8i-0005MU-NH
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for v7.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-8.21 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dave.kleikamp@oracle.com,m:jfs-discussion@lists.sourceforge.net,m:torvalds@linux-foundation.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel.org:s=k20201202];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel.org:-];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[pr-tracker-bot@kernel.org]
X-Rspamd-Queue-Id: 7B46F1309B9
X-Rspamd-Action: no action

The pull request you sent on Wed, 11 Feb 2026 15:46:02 -0600:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-7.0

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/178574549e421755dbe1e4721e20ca6c10af4900

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
