Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 788D4C129E5
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 Oct 2025 03:04:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kyVWJf5+zZM7guXJGd6W1comJmySCNorMnrcOkAPe8A=; b=VT8WnD6ea63gO789hQFlK0OJxv
	IOCR9F4HkRTPCqZyaZCB2NSZjduhaaFij/5RkO8y/jghA6Rqn0rMN85I7r/+Mh6jveaG8kVJVziBA
	HsHb1RIg+ZDGxn8qbVka7Mr4U+tUZOzCav9TujEkyJrcXseRsv4RdOBJQFhJn4JguDlc=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vDZ2B-0002vb-5E;
	Tue, 28 Oct 2025 02:02:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <nsc@kernel.org>) id 1vC1yL-0003nN-WF
 for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 20:31:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i+WbgTD8YPE3iQqDNLVLT3BXJOHJ3lmXkRzPQvulMzc=; b=KesisHzQbIJ9oknTen2RidPfRM
 yDaEFcVIVM5mZ0xzOuf82slteat7cnay9iIy+1RXiGtgWaMLPnDj6YvzA3UTw53xBuovvfPpDi1nD
 A7UuJOjRumNNoysSnh9X4Nyp5C2TM93FGMhyXZND25Ck4sVqE1le+mvV854EeJksFnTA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+WbgTD8YPE3iQqDNLVLT3BXJOHJ3lmXkRzPQvulMzc=; b=L9hrLHh1Kp1F3RDHwJeqxuceqA
 WRcOoB+MO1Dzqxsmj/R2iMmcGpslK2dwvWPnHuajJPszN2PvnklqEUSHlNKWS7t4ij1ptYVzt1aBa
 FN6kF6VBkwa44ODY7NhmZR2llmQy/+IW4r/EAwC3EOOMy4j2qkqekBdzz6GDYNGGT/TE=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vC1yL-0005tF-JJ for jfs-discussion@lists.sourceforge.net;
 Thu, 23 Oct 2025 20:31:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DD6BA60623;
 Thu, 23 Oct 2025 20:31:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D861C4CEE7;
 Thu, 23 Oct 2025 20:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1761251494;
 bh=rOyXGCg7UmEtNTCZZuBA9r74JK6zGQ/KTZPLM6OVdSc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=M2eAcJZirgUzEEqTJ29znDpDb4AeGkkhWIPfg5rEX4S32msTTVevJUiDTgLrq2WGn
 JmrpX0itb6ExW9r9Bz9kTneV9ydqxNRFqMESHaCAb12bJ2ocWVNoG6yIZfm1QjChKi
 Ki1HUfZIYb7Myjg+cNaROTUk9N8GQpO4ow8yqI+XJ3U2pkH6vZ1qd6e12d2/rRQFww
 loJCXSqX7LFV8AKysOxCAYMessZud1ZoHvwe4TYgglL6blTUpej/dFmOkD0V3oGLFl
 In+tHu25GR5GRC5wcgiQoJoRHmU46UoIOgCL/g+ODqvr2QaXMIzy9RlZk6XfjcqdjG
 zWVRRZYx24Saw==
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Nathan Chancellor <nathan@kernel.org>
Date: Thu, 23 Oct 2025 22:31:18 +0200
Message-ID: <176125134618.2701009.7020323237839096671.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251023-jfs-fix-conflict-with-clang-ms-ext-v1-1-e219d59a1e68@kernel.org>
References: <20251023-jfs-fix-conflict-with-clang-ms-ext-v1-1-e219d59a1e68@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 23 Oct 2025 10:38:50 -0700, Nathan Chancellor wrote:
 > After commit 778740ee2d00 ("Kbuild: enable -fms-extensions"), building
 > fs/jfs fails with clang: > > In file included from fs/jfs/jfs_u [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vC1yL-0005tF-JJ
X-Mailman-Approved-At: Tue, 28 Oct 2025 02:02:00 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: Rename _inline to avoid conflict
 with clang's '-fms-extensions'
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
From: Nicolas Schier via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Nicolas Schier <nsc@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net, llvm@lists.linux.dev,
 Nicolas Schier <nsc@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 linux-kernel@vger.kernel.org, Bill Wendling <morbo@google.com>,
 Justin Stitt <justinstitt@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


On Thu, 23 Oct 2025 10:38:50 -0700, Nathan Chancellor wrote:
> After commit 778740ee2d00 ("Kbuild: enable -fms-extensions"), building
> fs/jfs fails with clang:
> 
>   In file included from fs/jfs/jfs_unicode.c:8:
>   fs/jfs/jfs_incore.h:86:13: error: type name does not allow function specifier to be specified
>      86 |                                         unchar _inline[128];
>         |                                                ^
>   fs/jfs/jfs_incore.h:86:20: error: expected member name or ';' after declaration specifiers
>      86 |                                         unchar _inline[128];
>         |                                         ~~~~~~~~~~~~~~^
> 
> [...]

Applie to kbuild-next, thanks!

[1/1] jfs: Rename _inline to avoid conflict with clang's '-fms-extensions'
      commit: 9b38933a351d4f4e95a192adfe21ec235632bf4c

Please note that commit hashes might change in case of issues with
kbuild-next branch.

Best regards,
-- 
Nicolas



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
