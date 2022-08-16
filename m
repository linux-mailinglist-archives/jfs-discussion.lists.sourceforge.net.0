Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 397FD5965E3
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Aug 2022 01:10:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oO5hU-0005Kz-U1;
	Tue, 16 Aug 2022 23:10:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <torvalds@linuxfoundation.org>) id 1oO5hL-0005Kn-8o
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Aug 2022 23:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AMn3B3jYdCVxak8yksa8T7jS8rFLGuSxkkP5+8axw1A=; b=JkRtA3EdPEN5aXTfrQUIAkVLLK
 2hzKS+ndvbcM1Y6iwTzLsg/9DE4g7DgP3EmOpplKhKDNIs355XqW9Y82/Y6yY798X0IPceAO6+G3+
 m89iZBK+TUBCFx99ZwYN7DWLe7OFALGDa7QAatpDn7Z0fRIBXbuoc3OkeqkftnTKtzOc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AMn3B3jYdCVxak8yksa8T7jS8rFLGuSxkkP5+8axw1A=; b=RF9GrWsoD+WdEGdTWCGq2T7C8l
 mGVrW+CgECLeDrzdEHeUfwcMOntRS21ffFmkCImr3iZ89r22Bq1sOAD3AkGcS27owIVKHFR5WtIGV
 1OKyC6tZ6aTUDjeXDh3DwU6LVX4lcZxxZO6rz0ZpnZI26Aof26t4Z7NoGo/YJhyVGs34=;
Received: from mail-ej1-f42.google.com ([209.85.218.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oO5hG-004rxj-Aq for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Aug 2022 23:10:11 +0000
Received: by mail-ej1-f42.google.com with SMTP id gb36so21608565ejc.10
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 16 Aug 2022 16:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=AMn3B3jYdCVxak8yksa8T7jS8rFLGuSxkkP5+8axw1A=;
 b=Vm9rZhcUXu8DUu2U13LfpsCp0dP7Fg/9rAJeZp9YtlQ9Rq7Y9VtHRIc4gUGBrf6ABe
 +ZW0OMEq5BRJFyJbSJSx/y9p2lZo+15ohYnjJN9vM+Oe2v51uKNkPu3wDgexSVnVScq8
 +r2XB8pHGFS6YRv4syJ3wdNKjMUHxv1d12zww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=AMn3B3jYdCVxak8yksa8T7jS8rFLGuSxkkP5+8axw1A=;
 b=6rRC2pe/GEDHf/ZsBhv6KWqLE1BORHhj/oD/onglpihWyveGvYD/9ffB8rIoDTF0tS
 5R6qmCA5KhHsVYgd53WSyyaEWEzqtMu2cD4RFkFwDB5yizcyHdUYWfpSQd2b5ZucHcTF
 lF6HFLc5vBjxXl3R+P2LQaH82FBmyKwJEB07g2CZic14hd5aaCmahpkyyLofauS4BxxB
 P/4SAIgBKBYJeF9clxQ9bPfp99RMe82N4XunuWS91ClJnRnMuf5ZIuK9+7zIAx/M7h2a
 1VwHOvuegkxA6gmrlv82fIkB25p0drJQEjwEht7KhT7NFNih4IfWITtqdx4cmuGCpe1v
 RnKg==
X-Gm-Message-State: ACgBeo0iQvLu+bnVso0A44Rd3aKwzoZMogeDigkey4Xo4vNlP7sjcDBT
 prJiZJZscUsERX/24pu4JdhUck5LVTrAeElEIys=
X-Google-Smtp-Source: AA6agR6sjEGHMBKfqUl08bQAYv4wqsD4CHEJk5O4EatlrPCV6cOMqnwp6ondzA2yy5O2sUFu4BM/DQ==
X-Received: by 2002:a17:907:2cc8:b0:731:53a3:4a33 with SMTP id
 hg8-20020a1709072cc800b0073153a34a33mr14649811ejc.319.1660691399709; 
 Tue, 16 Aug 2022 16:09:59 -0700 (PDT)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com.
 [209.85.128.43]) by smtp.gmail.com with ESMTPSA id
 ds13-20020a170907724d00b0071cef8bafc3sm5923301ejc.1.2022.08.16.16.09.58
 for <jfs-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Aug 2022 16:09:59 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id
 m17-20020a7bce11000000b003a5bedec07bso173958wmc.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 16 Aug 2022 16:09:58 -0700 (PDT)
X-Received: by 2002:a05:600c:2195:b0:3a6:b3c:c100 with SMTP id
 e21-20020a05600c219500b003a60b3cc100mr383338wme.8.1660691398572; Tue, 16 Aug
 2022 16:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <YvvBs+7YUcrzwV1a@ZenIV>
 <CAHk-=wgkNwDikLfEkqLxCWR=pLi1rbPZ5eyE8FbfmXP2=r3qcw@mail.gmail.com>
 <Yvvr447B+mqbZAoe@casper.infradead.org>
 <b05cf115-e329-3c4f-dee5-e0d4f61b4cd5@schaufler-ca.com>
In-Reply-To: <b05cf115-e329-3c4f-dee5-e0d4f61b4cd5@schaufler-ca.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 16 Aug 2022 16:09:42 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiRs8k0pKy36cXYnBFVCJDP5DQMf6JM7FnRJz5tF4cMBA@mail.gmail.com>
Message-ID: <CAHk-=wiRs8k0pKy36cXYnBFVCJDP5DQMf6JM7FnRJz5tF4cMBA@mail.gmail.com>
To: Casey Schaufler <casey@schaufler-ca.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 16,
 2022 at 3:30 PM Casey Schaufler <casey@schaufler-ca.com>
 wrote: > > Smack passes all tests and seems perfectly content with the change.
 > I can't say that the tests stress this interfa [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.42 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.42 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oO5hG-004rxj-Aq
Subject: Re: [Jfs-discussion] Switching to iterate_shared
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
Cc: jfs-discussion@lists.sourceforge.net, Hans de Goede <hdegoede@redhat.com>,
 devel@lists.orangefs.org, apparmor@lists.ubuntu.com,
 linux-unionfs@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 codalist@coda.cs.cmu.edu, coda@cs.cmu.edu,
 linux-security-module@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, ceph-devel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, Namjae Jeon <linkinjeon@kernel.org>,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, Aug 16, 2022 at 3:30 PM Casey Schaufler <casey@schaufler-ca.com> wrote:
>
> Smack passes all tests and seems perfectly content with the change.
> I can't say that the tests stress this interface.

All the security filesystems really seem to boil down to just calling
that 'proc_pident_readdir()' function with different sets of 'const
struct pid_entry' arrays.

And all that does is to make sure the pidents are filled in by that
proc_fill_cache(), which basically does a filename lookup.

And a filename lookup *already* has to be able to handle being called
in parallel, because that's how filename lookup works:

  [.. miss in dcache ..]
  lookup_slow ->
      inode_lock_shared(dir);
      __lookup_slow -> does the
      inode_unlock_shared(dir);

so as long as the proc_fill_cache() handles the d_in_lookup()
situation correctly (where we serialize on one single _name_ in the
directory), that should all be good.

And proc_fill_cache() does indeed seem to handle it right - and if it
didn't, it would be fundamentally racy with regular lookups - so I
think all those security layer proc_##LSM##_attr_dir_iterate cases can
be moved over to iterate_shared with no code change.

But again, maybe there's something really subtle I'm overlooking. Or
maybe not something subtle at all, and I'm just missing a big honking
issue.

            Linus


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
