Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC22B1EA3D
	for <lists+jfs-discussion@lfdr.de>; Fri,  8 Aug 2025 16:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bbBUD36z6tWmzfNtvgsx/fHOu/2C27NeLmpvIQNbh3E=; b=ZnwhHT0ccyojbferLKnfN2otxQ
	ZCX4WirwYpMFyJOK0wo4JCZZd3ADqesaaR+ETpIRFzbRKfMprIGeLW6FEg861UqFd52Jft803o2l6
	nVKJU+6YNPvNwozNgqkU47Vg0yQZk3wEzZEI+mNwhB3Fy/P4VctXs9tPVWW7OARZa0cY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ukNxp-0002Vk-1s;
	Fri, 08 Aug 2025 14:20:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1ukNxl-0002VJ-Vu
 for jfs-discussion@lists.sourceforge.net;
 Fri, 08 Aug 2025 14:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZK6TQC+G4OnlPVEtP+8kObCZsoquXr6dRAsNr/EOhLs=; b=ldxOpko3dpje9Fu4tVjQahRpcV
 h3kMS+GYBdJL1EPhrEOE0mc6cSBFUYty63Ep3KzZ1yAN8/F5vOMNVDbtwVNGlqPuslh6jVOzW62w1
 peRahfyzd7CWGQfn7HCillQnZszu18gqYy3aAmBpPhxMviW5hfZuRxK3Ewj1h22L/phk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZK6TQC+G4OnlPVEtP+8kObCZsoquXr6dRAsNr/EOhLs=; b=kcV8v8exL+RikFd3xMnkcZjMp4
 PkDENti/ihu/Pzod/aWbInpnmrhxA3wXO+Z+cZI+mxnu3onEkWFcbBndP3QAotfl/Pxdo1zS8Nmny
 rIQbhiELTRV6WwqtbeAqYKZORuC5TYeUNA/2zAqnC/pRusfA1lBVZ1VnPDKa+NtLBfCs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ukNxl-0007Cs-J0 for jfs-discussion@lists.sourceforge.net;
 Fri, 08 Aug 2025 14:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZK6TQC+G4OnlPVEtP+8kObCZsoquXr6dRAsNr/EOhLs=; b=oLUl3Dnuif+1i8JMDXppVUlfzV
 SHMvNRysBszknYyBS7qdZ6Jen+9y1xzhZvIrhJ2Wwkrb3pNTScCDACyoqj0/MTcG1aF7dV3GMGRJf
 QEzlFk/8bt0PS3PdTwl6OxS/2ZlI8KILkx3ELKMXfEArgUS7H4dTbFsgZPwMupTgJWOzxbjGcXx6k
 dQPkUM+/ZLe4pKBWms9TBYlzZCXWkbqNsImEnFMhajpXjduPntXdtmk785I/klDiOs+PKstG6l9HR
 fNlPvwatfnXQP2WTfXG+K0tASKmvPGul4CJygArRmWnrGTkNmrra+Vo0EqHagtnkSejH0AqObKTRQ
 DFF9C3bw==;
Received: from willy by casper.infradead.org with local (Exim 4.98.2 #2 (Red
 Hat Linux)) id 1ukNxY-0000000EULv-4AJl;
 Fri, 08 Aug 2025 14:20:41 +0000
Date: Fri, 8 Aug 2025 15:20:40 +0100
From: Matthew Wilcox <willy@infradead.org>
To: yes PANG <pangyes608@gmail.com>
Message-ID: <aJYHuO771xiH3a0J@casper.infradead.org>
References: <CAJLDUOf6tk0SSL-Qf9WN73tbOjQqL86vVN1S1uPd4LE5p102eA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJLDUOf6tk0SSL-Qf9WN73tbOjQqL86vVN1S1uPd4LE5p102eA@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 08, 2025 at 11:53:02AM +0800, yes PANG wrote:
 > Dear Linux maintainers and reviewers: > We are reporting a Linux kernel
 bug titled **kernel BUG in > jfs_evict_inode**, discovered using a m [...]
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
X-Headers-End: 1ukNxl-0007Cs-J0
Subject: Re: [Jfs-discussion] kernel BUG in jfs_evict_inode
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
Cc: shaggy@kernel.org, brauner@kernel.org, sandeen@redhat.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Aug 08, 2025 at 11:53:02AM +0800, yes PANG wrote:
> Dear Linux maintainers and reviewers:
> We are reporting a Linux kernel bug titled **kernel BUG in
> jfs_evict_inode**, discovered using a modified version of Syzkaller.

Don't do this.  Work with the syzbot people to get your modifications
upstream.  Dealing with "my special modified version of syzkaller" is
painful for everybody involved.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
