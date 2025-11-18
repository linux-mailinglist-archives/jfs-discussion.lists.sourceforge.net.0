Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCF2C6AB70
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Nov 2025 17:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6Nz+R9uFuQHE5AsY1o6QYQLVijVvZ27vSV+G3w1Cvdw=; b=P9sOTcv6L1MT3tjK5/DqXvgLI/
	bs3C7AWj2jd+ga4IJRD1B8biD6v27OsIfBzZ6xaM4vCdXlhoF9DFwuaJBcOZHUhQIXXFnkksBUulx
	LuboYtykhJNcfW7a6Zp5JswfyxJXYXj33tYolTWcOSMd6eyRXqoe1Oqn+2CYl8Lc0EYQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vLOr5-0005zW-2P;
	Tue, 18 Nov 2025 16:46:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkoolstra@xs4all.nl>) id 1vLOr1-0005zI-7z
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Nov 2025 16:46:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HAHYRDhukERTz8v5O2UgurxedQY+3XqpZD0YVHrD21I=; b=RWM2J0d6eo2LyYaFbJ15vAefTt
 rZ5gx28iPfrys0WlBRsD6mSof2QjSL/tzM6iLCA8P2n8nbDoF6OqAaQ93uyAL4ie77Rl+KxoLOl2D
 WK3ae/MeNqnTN4wmQPcSdF6Lp+t3azOFLrCEy3VyZFDG54Rm5jBIWlZ37AVaIDhVvw1M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HAHYRDhukERTz8v5O2UgurxedQY+3XqpZD0YVHrD21I=; b=P0isVAHVtXwj57MwxL2Owv5Bs+
 miFLJnJEenSEz0STbb0b4F0kFIsfL0+42ynrsb3f69aeZ6jU1jQ7kRWHBEiI0BI/qwHVewBxINAKH
 OZxw8Jc6w6hwVJdopBRRUVhlz3wJXIlB21iSoouaB9ldp94DkM+cqHaiD2XKpMUIaYG8=;
Received: from ewsoutbound.kpnmail.nl ([195.121.94.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLOqz-0005uh-8T for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Nov 2025 16:46:53 +0000
X-KPN-MessageId: 69fa9918-c49e-11f0-9c78-005056ab378f
Received: from smtp.kpnmail.nl (unknown [10.31.155.37])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id 69fa9918-c49e-11f0-9c78-005056ab378f;
 Tue, 18 Nov 2025 17:48:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=xs4all01;
 h=mime-version:message-id:date:subject:to:from;
 bh=HAHYRDhukERTz8v5O2UgurxedQY+3XqpZD0YVHrD21I=;
 b=b4OW3P6OTZrHBLnSWsYpcyYzzuxwMua0kdL5hcRgLo7v/aHA9Tr3OkPAeB3HMkphgqVsY2M95X8Uc
 YeaBZVLT1J/2qJLePJnLHzLxHuDfdXsgNL2j9c1SyXl5sRpKb+PVmHriY22ZHXiQVQDjLATYPq4ism
 X9E4brYgBBGv82wlz7agKC3OZSeaTmn3Uh1yzGTpRKVgLmFq6tK3UXEDqon3YQXLOCp8Ata7AaHJpP
 EkgBdIrbGCSzjodTydob+ZkRrQZqZgQd8QeW3Cs5civJGB/jMWXWsDDGdIylRKZWiBDpydncbhc1yv
 hckzV6G8LD4D/F41RYZEj13jnRuoQAQ==
X-KPN-MID: 33|ozctNrtMi6JcJHbi1tHtXvl4ZKynJNp1Jhr5BHCIFVXHITwjkagyaclPA77hMll
 Pwc295jVlFxFol0Ja/SzApw==
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|QuyYZ0rs6+TiMRMiQSIoFkN+bkUOdZy9ETITNpmViG4OtpxjItibJA7SVBH/5lS
 7rQZ8O8vAjfOjwMCrEIElSg==
X-Originating-IP: 178.226.144.191
Received: from lt-jori.localdomain (unknown [178.226.144.191])
 by smtp.xs4all.nl (Halon) with ESMTPSA
 id 2b6ff0f6-c49e-11f0-bda2-005056ab1411;
 Tue, 18 Nov 2025 17:46:46 +0100 (CET)
To: brauner@kernel.org, gabriel@krisman.be, jlayton@kernel.org,
 neil@brown.name, shaggy@kernel.org, viro@zeniv.linux.org.uk
Date: Tue, 18 Nov 2025 17:46:45 +0100
Message-ID: <20251118164645.67401-1-jkoolstra@xs4all.nl>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251028232329.430752-1-jkoolstra@xs4all.nl>
References: <20251028232329.430752-1-jkoolstra@xs4all.nl>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Below syzbot bug has not been fixed yet. If anyone has time
 I would greatly appreciate a review of my patch, so it can be moved along.
 It has been sitting for a few weeks. Thanks, Jori. Apologies for the resend,
 I messed up the email headers. 
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
X-Headers-End: 1vLOqz-0005uh-8T
Subject: [Jfs-discussion] [PATCH] dtInsertEntry can result in buffer
 overflow on corrupted jfs filesystems
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
From: Jori Koolstra via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jori Koolstra <jkoolstra@xs4all.nl>
Cc: jkoolstra@xs4all.nl, syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Below syzbot bug has not been fixed yet. If anyone has time I would
greatly appreciate a review of my patch, so it can be moved along.
It has been sitting for a few weeks.

Thanks,
Jori.

Apologies for the resend, I messed up the email headers.

> Op 29-10-2025 00:23 CET schreef Jori Koolstra <jkoolstra@xs4all.nl>:
> 
>  
> Syzbot reported a general protection fault in inode_set_ctime_current.
> This resulted from the following circumstances: when creating a new file
> via dtInsert, BT_GETSEARCH may yield a pointer to a dtroot which is
> embedded directly in the jfs_inode_info. When finally dtInsertEntry is
> called, if the freelist field or any next field of a slot of the dtpage
> is corrupted, this may result in memory corruption of the parent
> directory inode.
> 
> In this case the i_sb field was corrupted, which raised the gpf when
> in inode_set_ctime_current i_sb was dereferenced to access s_time_gran.
> 
> I tested the patch using the syzbot reproducer and doing some basic
> filesystem operations on a fresh jfs fs, such as "cp -r /usr/include/
> /mnt/jfs/" and "rm -r /mnt/jfs/include/n*"
> 
> Signed-off-by: Jori Koolstra <jkoolstra@xs4all.nl>
> Reported-by: syzbot+cd7590567cc388f064f3@syzkaller.appspotmail.com
> Closes: https://syzbot.org/bug?extid=cd7590567cc388f064f3


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
