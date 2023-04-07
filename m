Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA656DAEA2
	for <lists+jfs-discussion@lfdr.de>; Fri,  7 Apr 2023 16:12:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pkmor-00065j-UP;
	Fri, 07 Apr 2023 14:12:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anupnewsmail@gmail.com>) id 1pkmci-0004yw-Q9
 for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Apr 2023 13:59:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qkjTQZiyEp69i+khEDoVUoiu0TmVX77vcchEWSjOYWg=; b=PiZhVpmBhYqt2gVqjC1rEC+Lm7
 dYZbJNUIYY9CCkiqgBKf9nAO3sexwM68C7RWaJuQHzjNcGU6CukJFtpGMlj5IZQWV1f3FVOo24N8T
 tuUFYTSnYWSj45uC+yFpYZtUcXNAsK7qIOslweELyy471ThaaJ9NiHX98+q5GSskI5OA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qkjTQZiyEp69i+khEDoVUoiu0TmVX77vcchEWSjOYWg=; b=U
 +fwVaV9YHaPsXz/EUaxNOT1U8XC94dqZxkG0K6Ykh/ck1o3Dc+hs9g9fx7prHjuS0+ZxdwfpB4YAW
 y0Ltuhqy5JRE/FSJ/EOE/wNCjwvsx2wAY7gWMjttjk1yFC6WoFiNcAbr/pzpAS/+3XwJTcgkiTbeB
 Il1Hf99IIrdIDR5U=;
Received: from mail-pl1-f173.google.com ([209.85.214.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pkmcf-000D8y-48 for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Apr 2023 13:59:29 +0000
Received: by mail-pl1-f173.google.com with SMTP id iw3so40056602plb.6
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 07 Apr 2023 06:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680875959; x=1683467959;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qkjTQZiyEp69i+khEDoVUoiu0TmVX77vcchEWSjOYWg=;
 b=FoQxGWAUjclaByPY+kYrY3hbxycz/zKItxZK7DPfuOIJH2tKvJ8aJAFPVagTl+B4gU
 d14837vt8dBdaANuZQibVh+yrKkVUB+1RVLyqIdSHNc3mzbY2sds8smt+ThW4XUrdtxn
 XAQciFK0+4q/Z7cFcIQPaUDONOl/47RK9IUDRYlwnrJIjcBunEEbv5PmHj0c9B4GCplX
 29yLXanuEM6tL39FauwZ1GfQzSDSUN08O7elbqPAxaQTbnGpipIKAB1cWHV/4SArfTfW
 xwUWe81YpddUw3BqicW+CwqgX+52As8Hugh1sHtN6w+MJicBkR5UwXu6gtlkNN53L5nt
 v4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680875959; x=1683467959;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qkjTQZiyEp69i+khEDoVUoiu0TmVX77vcchEWSjOYWg=;
 b=eaBZD8T5HGwZpFbjmCYzUKB2x0IR0z+CcN+NnTEMCLMk3T6f7n7aUYhR5z0lzAfurb
 ZITwd4ll8PpRMVblaoIS3neHs6bT9o6IDvbBI6+d2aqGJxe6LAp/1WooUebnu/ASxoCG
 6BGZUsqmTQuIF1NkMfw2GqdXm7Cn5ImrGPCWcLtPmgJYH9XvQgrGFVrW3efVxy8+h62l
 UGL3pztcEUD86Yrs0yAm/UdL8Fl5+tVg9X7RXmkF0EOJphK3BKBbGpbDSQydgKTGVz/T
 44mDJ/iRsLLU4ehijL8bLnGui77GATh6KI2imj0JHofOJZNfTITM9jxBdSKY5l7YSiNl
 pDIg==
X-Gm-Message-State: AAQBX9cI9BkBescKM4ALsZTCkkKoZ5/RKjkRQ929l+sjKlttwdotYaMf
 //AeebEhLA/tstssXXp7jzA=
X-Google-Smtp-Source: AKy350byoOGS6k4sI/rjUWAXzIng4LuwCeSCK0lFf/Rq896ENqH2rndFss02mAhVRxRrHMbj3ejhZA==
X-Received: by 2002:a17:903:1c7:b0:1a1:956e:5417 with SMTP id
 e7-20020a17090301c700b001a1956e5417mr3201444plh.22.1680875959382; 
 Fri, 07 Apr 2023 06:59:19 -0700 (PDT)
Received: from yoga ([2409:40e6:29:c6fc:20c6:5e49:603c:d6fa])
 by smtp.gmail.com with ESMTPSA id
 j8-20020a654d48000000b0050f6530959bsm2612702pgt.64.2023.04.07.06.59.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Apr 2023 06:59:18 -0700 (PDT)
Date: Fri, 7 Apr 2023 19:29:09 +0530
From: Anup Sharma <anupnewsmail@gmail.com>
To: shaggy@kernel.org, r33s3n6@gmail.com, mudongliangabcd@gmail.com,
 liushixin2@huawei.com, wuhoipok@gmail.com
Message-ID: <ZDAhrYVHTVEYIGUM@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported the following issue: option from the mount
 to silence this warning.
 =======================================================
 find_entry called with index = 0 read_mapping_page failed [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anupnewsmail[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pkmcf-000D8y-48
X-Mailman-Approved-At: Fri, 07 Apr 2023 14:12:01 +0000
Subject: [Jfs-discussion] [PATCH] fs: jfs: fixed UBSAN: shift-out-of-bounds
 in dbFree
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 shuah@kernel.org, syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com,
 anupnewsmail@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported the following issue:
         option from the mount to silence this warning.
=======================================================
find_entry called with index = 0
read_mapping_page failed!
ERROR: (device loop0): txCommit: 
ERROR: (device loop0): remounting filesystem as read-only
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:381:12
shift exponent 134217736 is too large for 64-bit type 'long long'
CPU: 1 PID: 5068 Comm: syz-executor350 Not tainted 6.3.0-rc2-syzkaller-00069-g0ddc84d2dd43 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
 dbFree+0x46e/0x650 fs/jfs/jfs_dmap.c:381
 txFreeMap+0x96a/0xd50 fs/jfs/jfs_txnmgr.c:2510
 xtTruncate+0xe5c/0x3260 fs/jfs/jfs_xtree.c:2467
 jfs_free_zero_link+0x46e/0x6e0 fs/jfs/namei.c:758
 jfs_evict_inode+0x35f/0x440 fs/jfs/inode.c:153
 evict+0x2a4/0x620 fs/inode.c:665
 __dentry_kill+0x436/0x650 fs/dcache.c:607
 shrink_dentry_list+0x39c/0x6a0 fs/dcache.c:1201
 shrink_dcache_parent+0xcd/0x480
 do_one_tree+0x23/0xe0 fs/dcache.c:1682
 shrink_dcache_for_umount+0x7d/0x120 fs/dcache.c:1699
 generic_shutdown_super+0x67/0x340 fs/super.c:472
 kill_block_super+0x7e/0xe0 fs/super.c:1398
 deactivate_locked_super+0xa4/0x110 fs/super.c:331
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
 task_work_run+0x24a/0x300 kernel/task_work.c:179
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x68f/0x2290 kernel/exit.c:869
 do_group_exit+0x206/0x2c0 kernel/exit.c:1019
 __do_sys_exit_group kernel/exit.c:1030 [inline]
 __se_sys_exit_group kernel/exit.c:1028 [inline]
 __x64_sys_exit_group+0x3f/0x40 kernel/exit.c:1028
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fa87e2289b9
Code: Unable to access opcode bytes at 0x7fa87e22898f.
RSP: 002b:00007fff4bfe3938 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 00007fa87e2a3330 RCX: 00007fa87e2289b9
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007fa87e29de40
R10: 00007fff4bfe3850 R11: 0000000000000246 R12: 00007fa87e2a3330
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
 </TASK>
================================================================================

The current size of dn_l2nbperpage was insufficient for larger values,
leading to unexpected behavior. This patch increases the size of dn_l2nbperpage 
to ensure that larger values can be accommodated without issue.

Tested via syzbot.

Reported-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=2a70a453331db32ed491f5cbb07e81bf2d225715

Signed-off-by: anupsharma <anupnewsmail@gmail.com>

---
 fs/jfs/jfs_dmap.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.h b/fs/jfs/jfs_dmap.h
index aa03a904d5ab..e852b3cb6b61 100644
--- a/fs/jfs/jfs_dmap.h
+++ b/fs/jfs/jfs_dmap.h
@@ -191,7 +191,7 @@ typedef union dmtree {
 struct dbmap_disk {
 	__le64 dn_mapsize;	/* 8: number of blocks in aggregate	*/
 	__le64 dn_nfree;	/* 8: num free blks in aggregate map	*/
-	__le32 dn_l2nbperpage;	/* 4: number of blks per page		*/
+	__le64 dn_l2nbperpage;	/* 4: number of blks per page		*/
 	__le32 dn_numag;	/* 4: total number of ags		*/
 	__le32 dn_maxlevel;	/* 4: number of active ags		*/
 	__le32 dn_maxag;	/* 4: max active alloc group number	*/
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
