Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 207D0A4040A
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Feb 2025 01:22:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tldGw-00070l-Lx;
	Sat, 22 Feb 2025 00:21:34 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tldGv-00070e-60
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Feb 2025 00:21:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tqMJWLY2AJcG1vhotFh2tnfe3QF/WPOAV93LjSptfqw=; b=IFNlAfURBIzUXybN/JHn2ETjL2
 OG6fdIvRxfsZQ9/hckZVDdCFu6r8XzxnhwmgSwRc5Ed6f3CzlXOW7dgD2sIFeDZR4yO+wQkYTCP2q
 L0E+jcsJsHHbExeD4YvH83ANBE6AFvJrWykAxGJcPGf4102TxTSiewuXhbd6E8UaSRWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tqMJWLY2AJcG1vhotFh2tnfe3QF/WPOAV93LjSptfqw=; b=Jww5Tt2IBmsxpb2njEea+5Zth6
 uKeCsxmC5soaTzg2h8WGkLlGpt3wa8NZs/+j0HuqLGAbSPCMF5Eo+U5P0nnzykbC+UsHMTyRXr2Qk
 THhXHCGqsX4h8X+GvJhZrTFsy5Ae1qKcj5R2LD6zdzlSYjLE/82/zQafJ0raipNG1UGM=;
Received: from out203-205-221-149.mail.qq.com ([203.205.221.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tldGs-0006b5-NJ for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Feb 2025 00:21:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1740183368; bh=tqMJWLY2AJcG1vhotFh2tnfe3QF/WPOAV93LjSptfqw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=in+xjCzTxW9tBaU+uyYuvZ0eNy/R2BdGKkw35YOXmxzfwiL46Ot+wA4jaC901IQ/N
 yyNzjJyOw+KEy8U0SRgeLjCiC3eRSHSZ3h4YczMiH5UCAfEeG8TxfKBV4TovKOVK4Q
 916sxLbJOz1qvLLeQEfFosJkymEY2CUG4bNhxj1I=
Received: from pek-lxu-l1.wrs.com ([114.244.57.157])
 by newxmesmtplogicsvrszb21-0.qq.com (NewEsmtp) with SMTP
 id 4061A0EE; Sat, 22 Feb 2025 08:16:06 +0800
X-QQ-mid: xmsmtpt1740183366thlxdkpk8
Message-ID: <tencent_93C98D8F12295DADDDAC19654FE30DB6A507@qq.com>
X-QQ-XMAILINFO: MyirvGjpKb1jkbSe83BGyeCjKig4IdtbxxGGCBS1vx8UozaaMrug00xgDZLXl7
 ADKOVaTK4yzyVmNosx/5bzfaX3WyA6BXNFLwtbEK3dAIIKLiu/Cc/jWiL8f9I5JfUAzn5/Gp0Vt0
 EYUZxMQErP3QUrOk0d0G6e3IWij21amL9jHZcM9zXMdTA0GrRO8/1E+laRDYWzMTtdY7rtAj+loL
 dt5ymlPRQ0fD7hVS/7RsQdixPzZLo5/o4xnksYQa+DPY7kDejJ4ysu/qd+0icla1RN8elYNei+eU
 16jIfALI5lHC/XZJf1gjLBFOKZ7cnZk07U7ag0J7uLt3Y/16+exZ2rnf6/aQBpB+uowaDYZBMB2o
 WpZ2nS2j4kOON90xImeHh4+VS5CgLCERV6wSHqg1lJVJOGZy7nSNr1HsQ4XZYXcWev0vQ2s5FqfL
 sFiiztI0YGDMsGHuYxsX39PJCmt9Ueyny7YYq9pGI8njxbR7zTh9h12yjynJR4QJlGFKSqcznZSp
 MEv4pel0AKLdSOz3FlnT1RPgsotrBcb4vrCBKmVu+oc7bubgpEb5fCDovKKIEamIK3n6aNKFW2jj
 QWeuQtde3R/eiYbZHqHs27q+wWbwASdZXwox4menftZY/pI0XbSP4ZznK8aFfsaiCsFjHGtJBdhQ
 Cns7QROVGFn07134KHq0UmSoKR6zV2Ya6Wj8SCm2pNgFYlqKM9D+oHrqeskDcpvs0FgpfhqhFJfu
 BrApMutH9Kp1JtkqaFDGlyLdqvLDV/oHMt186H4+9k4sz4Do3d165pPi2CVfCB9DjdfrGK5Cc/02
 Si2Na+flPVZqVUbEg1pXvJXogXOEvVgbVR0DbTE52wR4/qDncYgO2/osycqnvNMhicq2gHqYltcI
 wnlpxYB4/SSaH5QqXqzvv5BxF/U790qjCyxt9u0REqH8hDbjqKKl+66pjuMCRTy/4g5+2yYTrSEk
 5ImfeEHccLs9+V9mOT3g==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
To: dave.kleikamp@oracle.com
Date: Sat, 22 Feb 2025 08:16:06 +0800
X-OQ-MSGID: <20250222001605.3397199-2-eadavis@qq.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <47c49424-e24b-498a-9115-ace3fa4880e3@oracle.com>
References: <47c49424-e24b-498a-9115-ace3fa4880e3@oracle.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 20 Feb 2025 17:28:49 -0600, Dave Kleikamp wrote: >On
 2/20/25 5:22PM, Edward Adam Davis wrote: >> On Thu, 20 Feb 2025 10:15:04
 -0600, Dave Kleikamp wrote: >>>> syzbot report a deadlock in diFre [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.149 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.149 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.149 listed in sa-accredit.habeas.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1tldGs-0006b5-NJ
Subject: Re: [Jfs-discussion] [PATCH V3] jfs: Prevent copying of nlink with
 value 0 from disk inode
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: syzkaller-bugs@googlegroups.com,
 syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, eadavis@qq.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, 20 Feb 2025 17:28:49 -0600, Dave Kleikamp wrote:
>On 2/20/25 5:22PM, Edward Adam Davis wrote:
>> On Thu, 20 Feb 2025 10:15:04 -0600, Dave Kleikamp wrote:
>>>> syzbot report a deadlock in diFree. [1]
>>>>
>>>> When calling "ioctl$LOOP_SET_STATUS64", the offset value passed in is 4,
>>>> which does not match the mounted loop device, causing the mapping of the
>>>> mounted loop device to be invalidated.
>>>>
>>>> When creating the directory and creating the inode of iag in diReadSpecial(),
>>>> read the page of fixed disk inode (AIT) in raw mode in read_metapage(), the
>>>> metapage data it returns is corrupted, which causes the nlink value of 0 to be
>>>> assigned to the iag inode when executing copy_from_dinode(), which ultimately
>>>> causes a deadlock when entering diFree().
>>>>
>>>> To avoid this, first check the nlink value of dinode before setting iag inode.
>>>>
>>>> [1]
>>>> WARNING: possible recursive locking detected
>>>> 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0 Not tainted
>>>> --------------------------------------------
>>>> syz-executor301/5309 is trying to acquire lock:
>>>> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>>>>
>>>> but task is already holding lock:
>>>> ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>>>>
>>>> other info that might help us debug this:
>>>>    Possible unsafe locking scenario:
>>>>
>>>>          CPU0
>>>>          ----
>>>>     lock(&(imap->im_aglock[index]));
>>>>     lock(&(imap->im_aglock[index]));
>>>>
>>>>    *** DEADLOCK ***
>>>>
>>>>    May be due to missing lock nesting notation
>>>>
>>>> 5 locks held by syz-executor301/5309:
>>>>    #0: ffff8880422a4420 (sb_writers#9){.+.+}-{0:0}, at: mnt_want_write+0x3f/0x90 fs/namespace.c:515
>>>>    #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: inode_lock_nested include/linux/fs.h:850 [inline]
>>>>    #1: ffff88804755b390 (&type->i_mutex_dir_key#6/1){+.+.}-{3:3}, at: filename_create+0x260/0x540 fs/namei.c:4026
>>>>    #2: ffff888044548920 (&(imap->im_aglock[index])){+.+.}-{3:3}, at: diAlloc+0x1b6/0x1630
>>>>    #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2460 [inline]
>>>>    #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>>    #3: ffff888044548890 (&imap->im_freelock){+.+.}-{3:3}, at: diAllocAG+0x4b7/0x1e50 fs/jfs/jfs_imap.c:1669
>>>>    #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diNewIAG fs/jfs/jfs_imap.c:2477 [inline]
>>>>    #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>>    #4: ffff88804755a618 (&jfs_ip->rdwrlock/1){++++}-{3:3}, at: diAllocAG+0x869/0x1e50 fs/jfs/jfs_imap.c:1669
>>>>
>>>> stack backtrace:
>>>> CPU: 0 UID: 0 PID: 5309 Comm: syz-executor301 Not tainted 6.12.0-rc7-syzkaller-00212-g4a5df3796467 #0
>>>> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
>>>> Call Trace:
>>>>    <TASK>
>>>>    __dump_stack lib/dump_stack.c:94 [inline]
>>>>    dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>>>>    print_deadlock_bug+0x483/0x620 kernel/locking/lockdep.c:3037
>>>>    check_deadlock kernel/locking/lockdep.c:3089 [inline]
>>>>    validate_chain+0x15e2/0x5920 kernel/locking/lockdep.c:3891
>>>>    __lock_acquire+0x1384/0x2050 kernel/locking/lockdep.c:5202
>>>>    lock_acquire+0x1ed/0x550 kernel/locking/lockdep.c:5825
>>>>    __mutex_lock_common kernel/locking/mutex.c:608 [inline]
>>>>    __mutex_lock+0x136/0xd70 kernel/locking/mutex.c:752
>>>>    diFree+0x37c/0x2fb0 fs/jfs/jfs_imap.c:889
>>>>    jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
>>>>    evict+0x4e8/0x9b0 fs/inode.c:725
>>>>    diFreeSpecial fs/jfs/jfs_imap.c:552 [inline]
>>>>    duplicateIXtree+0x3c6/0x550 fs/jfs/jfs_imap.c:3022
>>>>    diNewIAG fs/jfs/jfs_imap.c:2597 [inline]
>>>>    diAllocExt fs/jfs/jfs_imap.c:1905 [inline]
>>>>    diAllocAG+0x17dc/0x1e50 fs/jfs/jfs_imap.c:1669
>>>>    diAlloc+0x1d2/0x1630 fs/jfs/jfs_imap.c:1590
>>>>    ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
>>>>    jfs_mkdir+0x1c5/0xba0 fs/jfs/namei.c:225
>>>>    vfs_mkdir+0x2f9/0x4f0 fs/namei.c:4257
>>>>    do_mkdirat+0x264/0x3a0 fs/namei.c:4280
>>>>    __do_sys_mkdirat fs/namei.c:4295 [inline]
>>>>    __se_sys_mkdirat fs/namei.c:4293 [inline]
>>>>    __x64_sys_mkdirat+0x87/0xa0 fs/namei.c:4293
>>>>    do_syscall_x64 arch/x86/entry/common.c:52 [inline]
>>>>    do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
>>>>    entry_SYSCALL_64_after_hwframe+0x77/0x7f
>>>
>>> I'm taking this patch, but making a change. It's a little cleaner to check ip->i_nlink after calling copy_from_dinode.
>>>
>>>>
>>>> Reported-by: syzbot+355da3b3a74881008e8f@syzkaller.appspotmail.com
>>>> Closes: https://syzkaller.appspot.com/bug?extid=355da3b3a74881008e8f
>>>> Signed-off-by: Edward Adam Davis <eadavis@qq.com>
>>>> ---
>>>> V1 -> V2: if the nlink of disk inode is 0 return -EIO
>>>> V2 -> V3: move the checking to diReadSpecial
>>>>
>>>> ---
>>>>    fs/jfs/jfs_imap.c | 2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
>>>> index 0cedaccb7218..25bb3485da3b 100644
>>>> --- a/fs/jfs/jfs_imap.c
>>>> +++ b/fs/jfs/jfs_imap.c
>>>> @@ -460,7 +460,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
>>>>    	dp += inum % 8;		/* 8 inodes per 4K page */
>>>>    
>>>>    	/* copy on-disk inode to in-memory inode */
>>>> -	if ((copy_from_dinode(dp, ip)) != 0) {
>>>> +	if (!le32_to_cpu(dp->di_nlink) || (copy_from_dinode(dp, ip)) != 0) {
>>>>    		/* handle bad return by returning NULL for ip */
>>>>    		set_nlink(ip, 1);	/* Don't want iput() deleting it */
>>>>    		iput(ip);
>>>
>>> My change:
>>>
>>> diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
>>> index 298445f6d3d4..ecb8e05b8b84 100644
>>> --- a/fs/jfs/jfs_imap.c
>>> +++ b/fs/jfs/jfs_imap.c
>>> @@ -456,7 +456,7 @@ struct inode *diReadSpecial(struct super_block *sb, ino_t inum, int secondary)
>>>    	dp += inum % 8;		/* 8 inodes per 4K page */
>>>    
>>>    	/* copy on-disk inode to in-memory inode */
>>> -	if ((copy_from_dinode(dp, ip)) != 0) {
>>> +	if ((copy_from_dinode(dp, ip) != 0) || (ip->i_nlink == 0)) {
>> This is incorrect. The purpose of adding this check is to prevent copy_from_dinode()
>> from using dip->i_nlink with a value of 0 to assign to ip.
>>>    		/* handle bad return by returning NULL for ip */
>>>    		set_nlink(ip, 1);	/* Don't want iput() deleting it */
>
>It will get set  to 1 right here ^^^
Things that can be determined by "di_nlink" before executing copy_from_dinode(),
Why let the CPU run copy_from_dinode() for an extra time before checking?
Isn't this a waste of CPU?

BR,
Edward



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
