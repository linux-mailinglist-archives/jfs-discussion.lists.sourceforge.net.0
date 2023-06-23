Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F8573B928
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jun 2023 15:53:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qChED-0007lM-Ky;
	Fri, 23 Jun 2023 13:53:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mirimmad17@gmail.com>) id 1qCh1v-0007TS-Dy
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4+7H3k9xy277oLed+TWizCwehvCr5NTWFidwXIFvyCc=; b=KjRkhyI/y8h9NpqqGOj0cX3AA4
 pwJVPBDL+lfVl3J+pl2q/rKzJWDWb6xHi/7xIG4lQtAvMV8PHI/0nmYifv2mv6kYjZnL60t5mbcqf
 6ra/TdASbECoHbmTXk8flu/1/J9AppygdvXU+Zye8VBcqzYLFf7PWSrszgQE2UAq3/5g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4+7H3k9xy277oLed+TWizCwehvCr5NTWFidwXIFvyCc=; b=SDehyYdAhCG401JqHoyOOh3ruo
 zCBs069ObjtA+IE5yZxKR3tQQ36QcoTBubvpXmDafQ6V4P9Ariy6C4N0sWauvots4ExqWvO0OO0OR
 52fjViXlng2x0RpGj3Nuw0hABrzic4VgYPCaSM0nMEKK6XL+YLEbfhh5OS8zQFE/riqE=;
Received: from mail-oa1-f51.google.com ([209.85.160.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qCh1v-00CRj7-2Z for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:40:51 +0000
Received: by mail-oa1-f51.google.com with SMTP id
 586e51a60fabf-19a427d7b57so412895fac.2
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 23 Jun 2023 06:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687527642; x=1690119642;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4+7H3k9xy277oLed+TWizCwehvCr5NTWFidwXIFvyCc=;
 b=kn4K5OVQn7PET8JZAF7rzm1SnYHK6Satu5TahpAc7iFwSiyNqRILEiIJ0rjWZp4+bF
 13Y3CXGFoXPidH+gii19rzw2PpMG+J8BzNT5WruyJLE01fNwQ2gePZakEaMDljJT/VkZ
 htrCLyS5d+IJLFp6AN6WIg6Qezdln+B1a0Eea1wHtoYFnPQF0+LGLMpeUXrG6s0gNT8g
 /o7sdUqUkK9EJklkp6isb7gr6dkuRQ6MFMFyTvxsJyzRtLLTFdnlUo0JEbD79zeENWXG
 wuvUQt7F82FG2JUcr/CY8Ivx6IAZ8pTrmR22Oo14Lh/0XPffj9ZODdGUEUNdblMwUeMz
 7+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687527642; x=1690119642;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4+7H3k9xy277oLed+TWizCwehvCr5NTWFidwXIFvyCc=;
 b=FXBGfJTFRME5MxlaPARTSO42w17ZwWoGDAqxHMqjSCWN2QoDLBETJJKjmxi5a5cFzx
 T3bZa9AZGp9qNdhpK6vTPWVOkMmx0rpRnhHpINOZLK7F20ai+gmrSkN6SMTPCjteYNML
 SqLdM9fiPsB0UTHdO6HXbmz6kbVLjhk1+JQ6wL7tIH3j0E6LT0CcYgtVY/tGfYBmjdga
 F/iMe3G9e5dcvADBpQY6APTWiRkygl86h8xK52ro7RFvQTRjKy5TYzNoZOekElVD/aPK
 5MC9rrU6Ds6ssJSjWMkR20UctU0/oeeCIGRZt5gbmGcSEP7QaCzqeQuUDUP0O/0yhpjE
 vTLA==
X-Gm-Message-State: AC+VfDzeqBfmrzYmc1bEteavzFb3HpSv+0m94QlochredbEgvyagEcAb
 o2CdqDwx0QrWngXOOx+eVYXTFou5eAfjmw7jWSY=
X-Google-Smtp-Source: ACHHUZ6WP6+QquCXCochsIQgKBZpyiKnf8Kr4c/z1G3fSAX+EL0o3YV7n6fBVYvDMtweZRAkoQnH9shWR3fUXB9KxaY=
X-Received: by 2002:a05:6870:d451:b0:1a9:8606:dfcd with SMTP id
 j17-20020a056870d45100b001a98606dfcdmr12162779oag.0.1687527641965; Fri, 23
 Jun 2023 06:40:41 -0700 (PDT)
MIME-Version: 1.0
References: <CY4PR1801MB1910F3DE3B29710C1D7A9226C68A9@CY4PR1801MB1910.namprd18.prod.outlook.com>
 <CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com>
 <a0493c88-358a-9d77-110a-18449314193b@oracle.com>
In-Reply-To: <a0493c88-358a-9d77-110a-18449314193b@oracle.com>
From: Immad Mir <mirimmad17@gmail.com>
Date: Fri, 23 Jun 2023 19:10:30 +0530
Message-ID: <CAJfv2=A-b7yVtNA_T2kYyk_xK_suWrVX=gC3b+Am4LmNmvq02A@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks for the feedback. I've prepared two patches to fix
 the bug. > Does this test case attempt to remount a read-only file system
 as read-write? I see a potential bug there. I'm not really sure about this.
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mirimmad17[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mirimmad17[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.51 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qCh1v-00CRj7-2Z
X-Mailman-Approved-At: Fri, 23 Jun 2023 13:53:32 +0000
Subject: Re: [Jfs-discussion] [PATCH] FS: JFS: Fix null-ptr-deref Read in
 txBegin
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
Cc: Dave Kleikamp <shaggy@kernel.org>, "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>, Immad Mir <mirimmad@outlook.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com"
 <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>
Content-Type: multipart/mixed; boundary="===============5902096791360541873=="
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

--===============5902096791360541873==
Content-Type: multipart/alternative; boundary="000000000000a5e9fd05fecc25f5"

--000000000000a5e9fd05fecc25f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback. I've prepared two patches to fix the bug.

> Does this test case attempt to remount a read-only file system as
read-write? I see a potential bug there.
I'm not really sure about this.

> Should be setting rc to an error here. I suggest -EROFS, but anything is
better than returning zero. Calling jfs_error() might also be in order, as
that would explicitly mark the file system to read-only. (The default
behavior at least.)

I've incorporated your suggested changes.

> It'd be nice if we could move the check to txBegin(), but it is assumed
to always succeed, so there's no good error recovery there without changing
all of the callers. Maybe we can call jfs_error() there in case we get
there from another syscall.

I am not sure what to do here. I am calling jfs_error and returning 0 which
is not what the caller would expect.

Thanks,
Immad.


On Thu, Jun 22, 2023 at 8:38=E2=80=AFPM Dave Kleikamp <dave.kleikamp@oracle=
.com>
wrote:

> On 6/20/23 10:53PM, Immad Mir wrote:
>
>
>
> Hi. May I please request a review on this patch.
>
> Sorry for the delay. See below.
>
>
> Thanks,
> Immad
>
> ------------------------------
> *From:* mirimmad@outlook.com <mirimmad@outlook.com> <mirimmad@outlook.com=
>
> *Sent:* Sunday, March 26, 2023 9:51:15 PM
> *Cc:* mirimmad@outlook.com <mirimmad@outlook.com> <mirimmad@outlook.com>;
> skhan@linuxfoundation.org <skhan@linuxfoundation.org>
> <skhan@linuxfoundation.org>; Immad Mir <mirimmad17@gmail.com>
> <mirimmad17@gmail.com>;
> syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com
> <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>
> <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>; Dave Kleikamp
> <shaggy@kernel.org> <shaggy@kernel.org>;
> jfs-discussion@lists.sourceforge.net
> <jfs-discussion@lists.sourceforge.net>
> <jfs-discussion@lists.sourceforge.net>; linux-kernel@vger.kernel.org
> <linux-kernel@vger.kernel.org> <linux-kernel@vger.kernel.org>
> *Subject:* [PATCH] FS: JFS: Fix null-ptr-deref Read in txBegin
>
> From: Immad Mir <mirimmad17@gmail.com> <mirimmad17@gmail.com>
>
> syzkaller reported the following issue:
>
> BUG: KASAN: null-ptr-deref in instrument_atomic_read
> include/linux/instrumented.h:72 [inline]
> BUG: KASAN: null-ptr-deref in _test_bit
> include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
> BUG: KASAN: null-ptr-deref in txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
> Read of size 8 at addr 0000000000000040 by task syz-executor.0/5098
>
> CPU: 0 PID: 5098 Comm: syz-executor.0 Not tainted
> 6.3.0-rc3-syzkaller-00005-g7d31677bb7b1 #0
> Hardware name: Google Compute Engine/Google Compute Engine, BIOS Google
> 03/02/2023
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
>  print_report+0xe6/0x540 mm/kasan/report.c:433
>  kasan_report+0x176/0x1b0 mm/kasan/report.c:536
>  kasan_check_range+0x283/0x290 mm/kasan/generic.c:187
>  instrument_atomic_read include/linux/instrumented.h:72 [inline]
>  _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141
> [inline]
>  txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366
>  jfs_link+0x1ac/0x5e0 fs/jfs/namei.c:802
>  vfs_link+0x4ed/0x680 fs/namei.c:4522
>  do_linkat+0x5cc/0x9e0 fs/namei.c:4593
>  __do_sys_linkat fs/namei.c:4621 [inline]
>  __se_sys_linkat fs/namei.c:4618 [inline]
>  __x64_sys_linkat+0xdd/0xf0 fs/namei.c:4618
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
>
> The issue can be resolved by checking whethere "log"
> for a given superblock exists in the jfs_link function
> before beginning a transaction.
>
> I'm not sure how we got here. log should only be null if the file system
> is mounted read-only. Does this test case attempt to remount a read-only
> file system as read-write? I see a potential bug there.
>
>
> Tested with syzbot.
> Reported-by: syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com
> Link:
> https://syzkaller.appspot.com/bug?id=3Dbe7e52c50c5182cc09a09ea6fc456446b2=
039de3
>
> Signed-off-by: Immad Mir <mirimmad17@gmail.com> <mirimmad17@gmail.com>
> ---
>  fs/jfs/namei.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> index b29d68b5e..cd43b68e2 100644
> --- a/fs/jfs/namei.c
> +++ b/fs/jfs/namei.c
> @@ -799,6 +799,8 @@ static int jfs_link(struct dentry *old_dentry,
>          if (rc)
>                  goto out;
>
> +       if (!(JFS_SBI(ip->i_sb)->log))
> +               goto out;
>
> Should be setting rc to an error here. I suggest -EROFS, but anything is
> better than returning zero. Calling jfs_error() might also be in order, a=
s
> that would explicitly mark the file system to read-only. (The default
> behavior at least.)
>
>          tid =3D txBegin(ip->i_sb, 0);
>
> It'd be nice if we could move the check to txBegin(), but it is assumed t=
o
> always succeed, so there's no good error recovery there without changing
> all of the callers. Maybe we can call jfs_error() there in case we get
> there from another syscall.
>
>
>          mutex_lock_nested(&JFS_IP(dir)->commit_mutex,
> COMMIT_MUTEX_PARENT);
> --
> 2.40.0
>
>
>

--000000000000a5e9fd05fecc25f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks for the feedback. I&#39;ve pr=
epared two patches to fix the bug.<br></div><div><br></div><div>&gt;<font s=
ize=3D"2"> Does this test
        case attempt to remount a read-only file system as read-write? I
        see a potential bug there.</font></div><div><font size=3D"2">I&#39;=
m not really sure about this.</font></div><div><font size=3D"2"><br></font>=
</div><div><font size=3D"2">&gt; </font><font size=3D"2">Should be setting =
rc to an error here. I suggest
        -EROFS, but anything is better than returning zero. Calling
        jfs_error() might also be in order, as that would explicitly
        mark the file system to read-only. (The default behavior at
        least.)</font></div><div><font size=3D"2"><br></font></div><div><fo=
nt size=3D"2">I&#39;ve incorporated your suggested changes.</font></div><di=
v><font size=3D"2"><br></font></div><div><font size=3D"2">&gt; </font><font=
 size=3D"2">It&#39;d be nice if we could move the check to txBegin(),
      but it is assumed to always succeed, so there&#39;s no good error
      recovery there without changing all of the callers. Maybe we can
      call jfs_error() there in case we get there from another syscall.</fo=
nt></div><div><font size=3D"2"><br></font></div><div><font size=3D"2">I am =
not sure what to do here. I am calling jfs_error and returning 0 which is n=
ot what the caller would expect.</font></div><div><font size=3D"2"><br></fo=
nt></div><div><font size=3D"2">Thanks,</font></div><div><font size=3D"2">Im=
mad.<br></font></div><div><font size=3D"2"><br></font></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 22,=
 2023 at 8:38=E2=80=AFPM Dave Kleikamp &lt;<a href=3D"mailto:dave.kleikamp@=
oracle.com">dave.kleikamp@oracle.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">

 =20
  <div>
    <p>On 6/20/23 10:53PM, Immad Mir wrote:<br>
    </p>
    <blockquote type=3D"cite">
     =20
      <div><br>
      </div>
      <div dir=3D"auto">
        <div><br>
        </div>
      </div>
      <div id=3D"m_-9107136514394148148ms-outlook-mobile-signature" dir=3D"=
auto">Hi. May I please
        request a review on this patch.<br>
      </div>
    </blockquote>
    <p>Sorry for the delay. See below.<br>
    </p>
    <blockquote type=3D"cite">
      <div id=3D"m_-9107136514394148148ms-outlook-mobile-signature" dir=3D"=
auto">
      </div>
      <div id=3D"m_-9107136514394148148ms-outlook-mobile-signature" dir=3D"=
auto"><br>
      </div>
      <div id=3D"m_-9107136514394148148ms-outlook-mobile-signature" dir=3D"=
auto">Thanks,</div>
      <div id=3D"m_-9107136514394148148ms-outlook-mobile-signature" dir=3D"=
auto">Immad</div>
      <div dir=3D"auto">
        <div id=3D"m_-9107136514394148148mail-editor-reference-message-cont=
ainer" dir=3D"auto"><br>
          <hr style=3D"display:inline-block;width:98%">
          <div id=3D"m_-9107136514394148148divRplyFwdMsg" style=3D"font-siz=
e:11pt"><b>From:</b>
            <a href=3D"mailto:mirimmad@outlook.com" target=3D"_blank">mirim=
mad@outlook.com</a> <a href=3D"mailto:mirimmad@outlook.com" target=3D"_blan=
k">&lt;mirimmad@outlook.com&gt;</a><br>
            <b>Sent:</b> Sunday, March 26, 2023 9:51:15 PM<br>
            <b>Cc:</b> <a href=3D"mailto:mirimmad@outlook.com" target=3D"_b=
lank">mirimmad@outlook.com</a>
            <a href=3D"mailto:mirimmad@outlook.com" target=3D"_blank">&lt;m=
irimmad@outlook.com&gt;</a>; <a href=3D"mailto:skhan@linuxfoundation.org" t=
arget=3D"_blank">skhan@linuxfoundation.org</a>
            <a href=3D"mailto:skhan@linuxfoundation.org" target=3D"_blank">=
&lt;skhan@linuxfoundation.org&gt;</a>; Immad Mir
            <a href=3D"mailto:mirimmad17@gmail.com" target=3D"_blank">&lt;m=
irimmad17@gmail.com&gt;</a>;
            <a href=3D"mailto:syzbot+f1faa20eec55e0c8644c@syzkaller.appspot=
mail.com" target=3D"_blank">syzbot+f1faa20eec55e0c8644c@syzkaller.appspotma=
il.com</a>
            <a href=3D"mailto:syzbot+f1faa20eec55e0c8644c@syzkaller.appspot=
mail.com" target=3D"_blank">&lt;syzbot+f1faa20eec55e0c8644c@syzkaller.appsp=
otmail.com&gt;</a>;
            Dave Kleikamp <a href=3D"mailto:shaggy@kernel.org" target=3D"_b=
lank">&lt;shaggy@kernel.org&gt;</a>;
            <a href=3D"mailto:jfs-discussion@lists.sourceforge.net" target=
=3D"_blank">jfs-discussion@lists.sourceforge.net</a>
            <a href=3D"mailto:jfs-discussion@lists.sourceforge.net" target=
=3D"_blank">&lt;jfs-discussion@lists.sourceforge.net&gt;</a>;
            <a href=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_blan=
k">linux-kernel@vger.kernel.org</a>
            <a href=3D"mailto:linux-kernel@vger.kernel.org" target=3D"_blan=
k">&lt;linux-kernel@vger.kernel.org&gt;</a><br>
            <b>Subject:</b> [PATCH] FS: JFS: Fix
            null-ptr-deref Read in txBegin<br>
          </div>
          <br>
         =20
          <font size=3D"2"><span style=3D"font-size:11pt">
              <div>From: Immad Mir
                <a href=3D"mailto:mirimmad17@gmail.com" target=3D"_blank">&=
lt;mirimmad17@gmail.com&gt;</a><br>
                <br>
                syzkaller reported the following issue:<br>
                <br>
                BUG: KASAN: null-ptr-deref in instrument_atomic_read
                include/linux/instrumented.h:72 [inline]<br>
                BUG: KASAN: null-ptr-deref in _test_bit
                include/asm-generic/bitops/instrumented-non-atomic.h:141
                [inline]<br>
                BUG: KASAN: null-ptr-deref in txBegin+0x131/0x6c0
                fs/jfs/jfs_txnmgr.c:366<br>
                Read of size 8 at addr 0000000000000040 by task
                syz-executor.0/5098<br>
                <br>
                CPU: 0 PID: 5098 Comm: syz-executor.0 Not tainted
                6.3.0-rc3-syzkaller-00005-g7d31677bb7b1 #0<br>
                Hardware name: Google Compute Engine/Google Compute
                Engine, BIOS Google 03/02/2023<br>
                Call Trace:<br>
                =C2=A0&lt;TASK&gt;<br>
                =C2=A0__dump_stack lib/dump_stack.c:88 [inline]<br>
                =C2=A0dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106<br>
                =C2=A0print_report+0xe6/0x540 mm/kasan/report.c:433<br>
                =C2=A0kasan_report+0x176/0x1b0 mm/kasan/report.c:536<br>
                =C2=A0kasan_check_range+0x283/0x290 mm/kasan/generic.c:187<=
br>
                =C2=A0instrument_atomic_read include/linux/instrumented.h:7=
2
                [inline]<br>
                =C2=A0_test_bit
                include/asm-generic/bitops/instrumented-non-atomic.h:141
                [inline]<br>
                =C2=A0txBegin+0x131/0x6c0 fs/jfs/jfs_txnmgr.c:366<br>
                =C2=A0jfs_link+0x1ac/0x5e0 fs/jfs/namei.c:802<br>
                =C2=A0vfs_link+0x4ed/0x680 fs/namei.c:4522<br>
                =C2=A0do_linkat+0x5cc/0x9e0 fs/namei.c:4593<br>
                =C2=A0__do_sys_linkat fs/namei.c:4621 [inline]<br>
                =C2=A0__se_sys_linkat fs/namei.c:4618 [inline]<br>
                =C2=A0__x64_sys_linkat+0xdd/0xf0 fs/namei.c:4618<br>
                =C2=A0do_syscall_x64 arch/x86/entry/common.c:50 [inline]<br=
>
                =C2=A0do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80<br=
>
                =C2=A0entry_SYSCALL_64_after_hwframe+0x63/0xcd<br>
                <br>
                The issue can be resolved by checking whethere &quot;log&qu=
ot;<br>
                for a given superblock exists in the jfs_link function<br>
                before beginning a transaction.<br>
              </div>
            </span></font></div>
      </div>
    </blockquote>
    <p><font size=3D"2">I&#39;m not sure how we got here. log should only b=
e
        null if the file system is mounted read-only. Does this test
        case attempt to remount a read-only file system as read-write? I
        see a potential bug there.</font><br>
    </p>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div id=3D"m_-9107136514394148148mail-editor-reference-message-cont=
ainer" dir=3D"auto"><font size=3D"2"><span style=3D"font-size:11pt">
              <div>
                <br>
                Tested with syzbot.<br>
                Reported-by:
                <a href=3D"mailto:syzbot+f1faa20eec55e0c8644c@syzkaller.app=
spotmail.com" target=3D"_blank">syzbot+f1faa20eec55e0c8644c@syzkaller.appsp=
otmail.com</a><br>
                Link: <a href=3D"https://syzkaller.appspot.com/bug?id=3Dbe7=
e52c50c5182cc09a09ea6fc456446b2039de3" target=3D"_blank">
https://syzkaller.appspot.com/bug?id=3Dbe7e52c50c5182cc09a09ea6fc456446b203=
9de3</a><br>
                <br>
                Signed-off-by: Immad Mir <a href=3D"mailto:mirimmad17@gmail=
.com" target=3D"_blank">&lt;mirimmad17@gmail.com&gt;</a><br>
                ---<br>
                =C2=A0fs/jfs/namei.c | 2 ++<br>
                =C2=A01 file changed, 2 insertions(+)<br>
                <br>
                diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c<br>
                index b29d68b5e..cd43b68e2 100644<br>
                --- a/fs/jfs/namei.c<br>
                +++ b/fs/jfs/namei.c<br>
                @@ -799,6 +799,8 @@ static int jfs_link(struct dentry
                *old_dentry,<br>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)<br=
>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto out;<br>
                <br>
                +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!(JFS_SBI(ip-&gt;=
i_sb)-&gt;log))<br>
                +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto out;<br>
              </div>
            </span></font></div>
      </div>
    </blockquote>
    <p><font size=3D"2">Should be setting rc to an error here. I suggest
        -EROFS, but anything is better than returning zero. Calling
        jfs_error() might also be in order, as that would explicitly
        mark the file system to read-only. (The default behavior at
        least.)</font><br>
    </p>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div id=3D"m_-9107136514394148148mail-editor-reference-message-cont=
ainer" dir=3D"auto"><font size=3D"2"><span style=3D"font-size:11pt">
              <div>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tid =3D tx=
Begin(ip-&gt;i_sb, 0);<br>
              </div>
            </span></font></div>
      </div>
    </blockquote>
    <font size=3D"2">It&#39;d be nice if we could move the check to txBegin=
(),
      but it is assumed to always succeed, so there&#39;s no good error
      recovery there without changing all of the callers. Maybe we can
      call jfs_error() there in case we get there from another syscall.</fo=
nt><br>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div id=3D"m_-9107136514394148148mail-editor-reference-message-cont=
ainer" dir=3D"auto"><font size=3D"2"><span style=3D"font-size:11pt">
              <div>
                <br>
                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
                mutex_lock_nested(&amp;JFS_IP(dir)-&gt;commit_mutex,
                COMMIT_MUTEX_PARENT);<br>
                --<br>
                2.40.0<br>
                <br>
              </div>
            </span></font><br>
        </div>
      </div>
    </blockquote>
  </div>

</blockquote></div></div>

--000000000000a5e9fd05fecc25f5--


--===============5902096791360541873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5902096791360541873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion

--===============5902096791360541873==--

