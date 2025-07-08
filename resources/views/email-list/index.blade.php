<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Email List') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">

                    <form method="GET" action="{{ route('email-list.create') }}" class="flex justify-end mb-4">
                        <button type="submit"
                            class="px-4 py-2 bg-black text-white rounded hover:bg-gray-900 transition shadow-md">
                            {{ __('Create new email list') }}
                        </button>
                    </form>

                    <!-- Nova tabela -->
                    <div class="overflow-hidden w-full overflow-x-auto rounded-radius border border-outline dark:border-outline-dark">
                        <table class="w-full text-left text-sm text-on-surface dark:text-on-surface-dark">
                            <thead class="border-b border-outline bg-surface-alt text-sm text-on-surface-strong dark:border-outline-dark dark:bg-surface-dark-alt dark:text-on-surface-dark-strong">
                                <tr>
                                    <th scope="col" class="p-4">ID</th>
                                    <th scope="col" class="p-4">Título</th>
                                    <th scope="col" class="p-4">Criado em</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-outline dark:divide-outline-dark">
                                @forelse($EmailList as $list)
                                    <tr>
                                        <td class="p-4">{{ $list->id }}</td>
                                        <td class="p-4">{{ $list->title }}</td>
                                        <td class="p-4">{{ $list->created_at->format('d/m/Y') }}</td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="3" class="p-4 text-center text-gray-400">
                                            {{ __('No email lists found.') }}
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</x-app-layout>
