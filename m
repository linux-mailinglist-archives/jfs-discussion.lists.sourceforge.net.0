Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D2BB175E1
	for <lists+jfs-discussion@lfdr.de>; Thu, 31 Jul 2025 19:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:To:Date:Message-Id:References:In-Reply-To:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=96OlvV1xEZ4u9z2SfkJdi96AgoeY7pDkDro0hS8PvIM=; b=fgPVYrFPRnl3IEr+54ZVMfMKZJ
	TZTFpqb+f7gxfHMYkKe5rhKeiiCv6BdSJow6fdHr6IZeHN35bv/rKEJ5Gh11eNJdMf/pKlqNr4m7g
	Xvv0airH2IgeaZw1zTCW6bInob2BIR1rzhVd2fnvBKaAalPYypTyRCWk7Mj71ooG+haw=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uhXVi-0001aG-QK;
	Thu, 31 Jul 2025 17:56:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1uhXVg-0001a9-Vp
 for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Jul 2025 17:56:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gQbxLM/W22iZlnHVaz5BZGez80xwM04MFOojaihPAHw=; b=EBrFgsK2icHj8md/xdTi60VaHK
 e2vIhogVNXtx4pa7L38qAc3qrCP7AopTaureH/yuTqZMjF0i0+kBm7+VVvwgOIMKK8gf9MGiKO2ev
 nEFx8wSq+7Myx8RQ+9VKHEy/W3wOUsUP1fxZC80sFrbiDsniSyOu65M0VnLUxXeUzzn0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gQbxLM/W22iZlnHVaz5BZGez80xwM04MFOojaihPAHw=; b=IYPnfB0cgolVrjPc9SFWrQIyTn
 DE+FEvxPZRHD+6oMPz7r837JsGxZWmhYEggECIayDI+MBA8iGeQx+mZTem3/zzRjoJYs+4mVbPbe+
 7Wvtmvbnofw4c4d1QCjkiS/gTXd+8lqIaStkq5t5IZo55UajZzGMvpdChoHacklrB/JE=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uhXVe-0003kK-Hy for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Jul 2025 17:56:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3127A5C63E9;
 Thu, 31 Jul 2025 17:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF35DC4CEEF;
 Thu, 31 Jul 2025 17:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753984560;
 bh=VKCwX0DHIRkcRvdK4nbNB2OWYDzjpsSnc8xa6opI+YE=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=A1gp5umN2ItxAdzkoxec6zoe4/Vh+Rv4SleH6jEx9mhU6czKFSO1bwEkaA5fngknn
 il0kIedUd/ao4ceEQfIbdzeJVacpB3fVIkQb2LFvZq+Gdbfu0lizT4Q0Z/JNCqcwiK
 LouWIbAFjE496FqjnowvRm709J9Ys+N0XxMQOyCmAIpFg/okLeURlSQ+tVl0OKearc
 ydFIstxEhziweZCb/ISqfRCFDZjCoRgs2DNVbalc3X6LMAfng8QoENocO4P4YiZ8Cb
 CoqzK8sNIVLqe/3G48BpCvXxRurg4qy8UOmeIJecxwOTFMUDJ/D/5VMpEboF0EIFdc
 ++5CzCi43MJ4w==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ADC3D383BF51; Thu, 31 Jul 2025 17:56:17 +0000 (UTC)
In-Reply-To: <1ab1a9e3-037d-473f-954d-248037f2ec03@oracle.com>
References: <1ab1a9e3-037d-473f-954d-248037f2ec03@oracle.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <1ab1a9e3-037d-473f-954d-248037f2ec03@oracle.com>
X-PR-Tracked-Remote: git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.17
X-PR-Tracked-Commit-Id: 856db37592021e9155384094e331e2d4589f28b1
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 440e6d7e1435bb1e1948eeae34ca8bef6c7c5f82
Message-Id: <175398457616.3232013.14278904960309436241.pr-tracker-bot@kernel.org>
Date: Thu, 31 Jul 2025 17:56:16 +0000
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Thu, 31 Jul 2025 09:06:11 -0500:
 > git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.17 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/440e6d7e1435bb1e1948eeae34ca8bef6c7c5f82
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uhXVe-0003kK-Hy
Subject: Re: [Jfs-discussion] [GIT PULL] jfs updates for 6.17
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

The pull request you sent on Thu, 31 Jul 2025 09:06:11 -0500:

> git@github.com:kleikamp/linux-shaggy.git tags/jfs-6.17

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/440e6d7e1435bb1e1948eeae34ca8bef6c7c5f82

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
